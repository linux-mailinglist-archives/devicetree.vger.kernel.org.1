Return-Path: <devicetree+bounces-121109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B769C57BC
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 13:29:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 08D7FB26DE0
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 11:32:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5686D1FA834;
	Tue, 12 Nov 2024 11:27:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XDA9agfM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262B61FA821
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 11:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731410863; cv=none; b=gKQHzooRRnNi3mt2TdIUSH4HjHg0rfn4Y3HoxjLbIzm2mpxPU/V/7ainfirO80oHxdKQSdhks8jpkuzSDdV1wjRyXh+kfYqroLSVIwvjemuQ8mhqpYa1j0loxLNVaeIIxegzXSiQOKFFaDk+HlocDgeLk7sw/x6WGlw9lN1dxVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731410863; c=relaxed/simple;
	bh=IwFPI0wS/zSh9KO3kInJdnvla0lwEg1CpwDSNeOb+RE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XovIzjLyVrufyHBpnZpdb61cOmSP7WUpI3sSrYILXz3VRR063/eQVGndhHUOIhpaUuhTeN7bJ1ZeV/Z349C2kvh3aha+g0v4lpBp5sF7lRivN3oZtb+RQBxZQ4ZnnTiLrgBvH5lxMau0j0VuX9jPwS0+Ds8GpGbasuGoTxJaOYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XDA9agfM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AC6AunD004440
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 11:27:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8FysoUKQCmcH3GBytp0zaytK1t5Y0Chtzi5AW8BBt9k=; b=XDA9agfMHtXL6wLl
	wlAyhlRmH6aKjDOaNi4pwo+i0ZyDxWtXtEMyxGFMPikmhUlM7+jUmB++LXavl4Ev
	snNGQ+Ky8cPerfbaRAVgBFt6SarshXIzQdCtL10aroiPc4hGug2sReVpLN8G23UD
	0aZVDzCpMMb15k1p/SpLOzKQvcNFwMOkbBNVq6nqkMtvbRkSODTAGnD4QsVGnapN
	Z1iHD0uHZxa5jkA/Aeg0sD0Zu0S8TY4UG2rnlTkeYYirbrTkTtUW+5+VhFxWoJnd
	hMJyaEGsXe0fs95bOiQxhXbeKq2z2oJCnQTx3QmjPrbnxx32W8RQBrkq1+fec5Ev
	hyN96A==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42v1h6grxx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 11:27:40 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-20cdbffc3ccso214325ad.2
        for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 03:27:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731410859; x=1732015659;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8FysoUKQCmcH3GBytp0zaytK1t5Y0Chtzi5AW8BBt9k=;
        b=EnyClZ0O2z19NEcPlTI2Y299ekN+PLybfUlG+KZxzd7bnYxACXGIBmCTjLeYKYieIk
         do99jxxR7t85wQ0Bmm/y0tYMGVs0AY6FFpOVfDYcitgHOB5tmWihLERzoGDM0fXp8Goh
         Sue90dTHhthPguxMV+c4dqUDvBbG/ZzoeC7uhFBQU7GhIa58XO+bDlgYObTW0VFnPab7
         6USx/3fROcsSGpj937GSZPBx21I34Hzfx4jseEnkzG5bwQ+xgvcVP9Dn/NpskUQm1Utw
         XesVIWiL5VMXX+UKkQ5r1h0g4upI8YtvEOKGDpBB+fyoACPttiPrWgFCuHoAi0qQtJhe
         f25w==
X-Forwarded-Encrypted: i=1; AJvYcCUOeUz/PTpjvlW1rcb6StAxgN+qglt0zSzcz8IxGiy2ISpQp2ae2trnVz1nv6uQr+V8DPYTCuw2/IAF@vger.kernel.org
X-Gm-Message-State: AOJu0YwBKiSilR3JFkMmJXKOvO3XhX/UBc7QNnuWHEuLtecd0kpOgm55
	xnk9WYuHdHSwt1IrJIqnLI5JbU+rG6tX+nDq3Chh6nPXRhGXQyv8ze8g5gTOxNQnpzpaVWzCgy2
	RlJhVaddX3FttXLqIp5tF9Yk1c15+/cbC50m017F2kcT0GtT2QNtI62bzSr0jP4bsnmYzjOxdVw
	==
X-Received: by 2002:a17:902:f646:b0:207:14b3:11a7 with SMTP id d9443c01a7336-211835ad362mr97306315ad.14.1731410859562;
        Tue, 12 Nov 2024 03:27:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGFFqOC1u19hi/xuXAev00tu4AN5Xhtkx8dXOV2vADFYDwPCJfvX72qKqUQDtVAeXkB3P4NrQ==
X-Received: by 2002:a17:902:f646:b0:207:14b3:11a7 with SMTP id d9443c01a7336-211835ad362mr97306155ad.14.1731410859221;
        Tue, 12 Nov 2024 03:27:39 -0800 (PST)
Received: from [192.168.123.190] (public-gprs527294.centertel.pl. [31.61.178.255])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0def4b5sm711984766b.146.2024.11.12.03.27.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2024 03:27:37 -0800 (PST)
Message-ID: <341a864e-d3b4-4b79-8b91-79ff6f06879a@oss.qualcomm.com>
Date: Tue, 12 Nov 2024 12:27:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: qcom: qcs8300: Add ADSP and CDSP0 fastrpc nodes
To: Ling Xu <quic_lxu5@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: quic_kuiw@quicinc.com, quic_ekangupt@quicinc.com, kernel@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241112074945.2615209-1-quic_lxu5@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241112074945.2615209-1-quic_lxu5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: sMqRaLWw-GEiHne0godSpD5mZWdFzTxM
X-Proofpoint-GUID: sMqRaLWw-GEiHne0godSpD5mZWdFzTxM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 bulkscore=0
 phishscore=0 adultscore=0 priorityscore=1501 mlxscore=0 clxscore=1015
 lowpriorityscore=0 impostorscore=0 spamscore=0 mlxlogscore=859
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411120092



On 12-Nov-24 08:49, Ling Xu wrote:
> Add ADSP and CDSP0 fastrpc nodes for QCS8300 platform.
> 
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---

[...]


> +				fastrpc {
> +					compatible = "qcom,fastrpc";
> +					qcom,glink-channels = "fastrpcglink-apps-dsp";
> +					label = "cdsp";
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					compute-cb@1 {
> +						compatible = "qcom,fastrpc-compute-cb";
> +						reg = <1>;
> +						iommus = <&apps_smmu 0x19c1 0x0440>,
> +							 <&apps_smmu 0x1dc1 0x0440>,
> +							 <&apps_smmu 0x1961 0x0400>,
> +							 <&apps_smmu 0x1d61 0x0400>,
> +							 <&apps_smmu 0x1981 0x0440>,
> +							 <&apps_smmu 0x1d81 0x0440>;

If you do SID & ~MASK, many of these come out to the same
value. Could you try to simplify the entries?

Konrad

