Return-Path: <devicetree+bounces-260302-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mOG3CsDieWm50gEAu9opvQ
	(envelope-from <devicetree+bounces-260302-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:19:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AFACA9F5F2
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:19:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E632C30039BC
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:19:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BFE72DB7B3;
	Wed, 28 Jan 2026 10:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kOz1JCWB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Sqh36VP8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3848A2C08D1
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769595581; cv=none; b=uvi/gSsM+XIjf+FNb0pK+xJG6Zq2Y5sp0eHoQ530iTLFry3POCKgi4exizIB7yfkgLnxRA+4gyuiZYVEjnNd+aG/rynOAUe3bQW+KHqV/o1thx065+y+PNaawRheDXDLALmvkHcHslONvIuNR8QFXj70+EUA6HxVUzZt7LtMbcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769595581; c=relaxed/simple;
	bh=s3ipkqWrYloiY//B43MM5t7dDkSX2rAhVY755/tu40g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tLD0kLaplc+GIQaME/cFf+gGCiof9IiNdJk52d0/JC48dRuI5pUEV3cqpO2J6IlaImfLwyYShPwB9cohD4TcC84644weCMsTeRRGf29SZgdMB09Z/uX/nt7ausgo+7L6clkWK9a8+9YpW76qLkwkI/NHxKrZPNrShvH9ly9GjtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kOz1JCWB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Sqh36VP8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S92CNL3387345
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:19:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/Uz/Cv/+GN0OvWnXwysjrpZjnSpYYyBV9CqUZwYRucg=; b=kOz1JCWBgzkf69GQ
	dZWaBpLr9Gs8M+MK2NU7J/zVcfVpNas1lkv4FS1KnlfmDR/BMYCRZ0DCcJllQVO6
	f3R2yfHOslNYaLnGmKIWpRHxaHLLEh0j4kU/HPZOu/uHmpLHukv5lkbMpGTN9Y1s
	8IZdKtFFv9w2+0U+5F9B/yvvLWpmstm4Kk1BBqD1uUsHK30NJM0XXjceYZZq0gK5
	GXP4peUdEMXnIfaXXTXqfxPR0Bk/vURiGpOgVSZWzigIkPIfIPWxL8r917qoV8t2
	ySMKT4eJIPfS3+r8FzPQ6pz+d0taGWubTxW7ecj7AMP0/rj7fc5pRSLjl+/52ZjL
	ITN1oQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by1dfu2ee-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 10:19:39 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8946586903dso22739776d6.3
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 02:19:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769595579; x=1770200379; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/Uz/Cv/+GN0OvWnXwysjrpZjnSpYYyBV9CqUZwYRucg=;
        b=Sqh36VP8SGTHseMg0u22YSWAPDm4vNcHNB8G5zOsvDX21DLQQbZXuNQN2WlIijhtDi
         /NuMvsWu/4vdFSaV2fnFEvjuIBGjwcuciK+TclEKqwQEzrDDj3uLjGevG2en13zUDyVq
         3RWsd12a+cqwySrUYLOP4XSCjInZfA9vCKpV9iuaq1Odoo6iCKfuZj/S01UUzJuXO2ae
         9YXyexw0ugAqL8xh9m3GFofz9VIIhAdwe0U/h0wmEMgoPbgGG8sitsHDJNH5dHQl2Cqb
         b5YC38aUBgGxWDC4d8TPKj1WwYK1TFCYZN64+ngrMqzsB10HN8BHup3EW9aY1RAWRpDT
         Luuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769595579; x=1770200379;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Uz/Cv/+GN0OvWnXwysjrpZjnSpYYyBV9CqUZwYRucg=;
        b=TkApepy9J9oMQh9bdqXw8a4dbMb6n8MDo7+EF8DuoNH97IA+9puxAKUrltAvi3cC9t
         mYB5KZ+ahyEOlkhVEpC+9j7M2k9jzT7KKvmmNw4GDlZGay5vc0qPYxO7U8bD9A5icKVN
         4SDG1/w80z6Ubk3ICGJaKWOT/QBZ96dJHuwsr68E2Je3VUsnzi5x94Tv4FGI576QqPeS
         7rD3V9IEq+1dvk4bESrZ/VdecVFT6qKT9+QO7Cf08DTAtBFHddalI1XCnyd5ghpKByn8
         EgPP971URNR5z6C3ZJD8vQT6PLCSVFhZwly9OmOHGehzS6iwGetFpR5nOLFyRNUI8tvM
         k9ZA==
X-Forwarded-Encrypted: i=1; AJvYcCV/5OnoI+qJt5SFPCqsoUZhsfUT3uuQAtofhYYvcyxtRLMVaIzuwW162kngkNTgdWITIKJAJZiM5JY/@vger.kernel.org
X-Gm-Message-State: AOJu0YwfRwlFLMAt/MZfc4DCA4DfItkhfZzhQGZXT3Qd3ZwhyXtpP8Eu
	x15uqaahaQxjl5C4fUER+FqZNfvmerleiAtvQaEi3mBZWIgkE3wokURYgTk7zelDCtqdfQQmrpC
	hZj6+A3FoOMuli7DD1pjaBhb+MRnbgkjpA2xc1WcGTaMutcSdtH4DhqzwS+WFRMvx
X-Gm-Gg: AZuq6aIZIBZ5tMjRJa/apzOP67ujxYNqihhoneHzrci7D1zI3OzyOBZq8dQiynCFl0i
	SJKA3SfDjCCCLhqBeAFCcQ/nANBbRxP2AbhcgHUYGxtiw9CEY/E4cLp8XAI8vo1tCbtLssEcB+F
	/D/im31GUjq6KyQfuIXOUBb3rXGFk0K+54nispLV7613z9s33iVDHMFdBD5yme4Wm0lgfP/9n2D
	P3fUzz5z/OdNAXAMmrBBueMT6SJC46A2RWhgRWBoVNohS/bZ7pVr1J67fLN7rtN6Ab2LvFYdivO
	qVT1HwaU5zK0Xu44+yAC9K1Xs8lhbJNw9yaewBr48vbqdIn6afoRedb25L40UWX1eixJk5phWlW
	aL9Q8tMQDghVyHqc6NnidNyA2FF4lpOMxnJmK6L7ijo/nvw1kKu0GvmMDtvRG4hYgxdI=
X-Received: by 2002:a05:620a:462a:b0:8b2:ec2f:cb3d with SMTP id af79cd13be357-8c714c21c96mr100192085a.10.1769595578639;
        Wed, 28 Jan 2026 02:19:38 -0800 (PST)
X-Received: by 2002:a05:620a:462a:b0:8b2:ec2f:cb3d with SMTP id af79cd13be357-8c714c21c96mr100189485a.10.1769595578086;
        Wed, 28 Jan 2026 02:19:38 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1baa42sm108088366b.46.2026.01.28.02.19.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 02:19:37 -0800 (PST)
Message-ID: <9566365e-3330-4130-a073-8b58089b5f07@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 11:19:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] arm64: dts: qcom: Update compatible for videocc and
 camcc nodes on purwa
To: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
 <20260128-purwa-videocc-camcc-v1-7-b23de57df5ba@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260128-purwa-videocc-camcc-v1-7-b23de57df5ba@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA4NCBTYWx0ZWRfXxKXjTijnVm3e
 10sO+BuOnA+arF67Oi0i06GtnHdgurpaXYTyCR1PiawB94KvKAxkcjE8dL8o5o5QN3koGCvFMWf
 h2NIZFlCwMCR9JPr+R3jLmsCixCPiZa6j0ylI/gChc0DgqU0S2UuAanuBo33ZO+TGsF7L+T4LbJ
 8hy+Vd4tmtruW4xg3K1soGg7E7DpAdQPH2c8R2gImfGLho7+XnGBAdcc4pBMb54xa2H1Qe1/CON
 z+rp7Si/qI7KusIX7MBVe2JBDlTkh5xKUPEErVdLQo2ndE3GEQ810qH2UVguTnGcAyPYLEP1/pl
 Fiv1Tbxlgrsp3L6I/mNkuCtiSqms5AlAN1rxs9InIURvOJMt0jPpob5euJtyp3ti3A7cF/4qoid
 bMKihkKEbPWScP6MsF6UVXpadmZhvEHqOATDG88LFIl+49n32apv0GtlEEUBBwxZ1MhLbu2X4ZL
 OSEdRugnYTWgpxaBANQ==
X-Proofpoint-GUID: fO6WlIkXlWRTvdm0XzoXUfmmV4DkieW6
X-Proofpoint-ORIG-GUID: fO6WlIkXlWRTvdm0XzoXUfmmV4DkieW6
X-Authority-Analysis: v=2.4 cv=YeuwJgRf c=1 sm=1 tr=0 ts=6979e2bb cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=0fB7KJRU0MCZpBymCQIA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 suspectscore=0 phishscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280084
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_FROM(0.00)[bounces-260302-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AFACA9F5F2
X-Rspamd-Action: no action

On 1/27/26 8:26 PM, Jagadeesh Kona wrote:
> Update the compatible for videocc and camcc nodes to match with their
> respective purwa(X1P42100) specific drivers.
> 
> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/purwa.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/purwa.dtsi b/arch/arm64/boot/dts/qcom/purwa.dtsi
> index 2cecd2dd0de8c39f0702d6983bead2bc2adccf9b..63599ba0a4f488d8f40f3e4d849645a8fa9ebf59 100644
> --- a/arch/arm64/boot/dts/qcom/purwa.dtsi
> +++ b/arch/arm64/boot/dts/qcom/purwa.dtsi
> @@ -6,6 +6,8 @@
>  /* X1P42100 is heavily based on hamoa, with some meaningful differences */
>  #include "hamoa.dtsi"
>  
> +#include <dt-bindings/clock/qcom,x1p42100-videocc.h>
> +
>  /delete-node/ &bwmon_cluster0;
>  /delete-node/ &cluster_pd2;
>  /delete-node/ &cpu_map_cluster2;
> @@ -22,10 +24,18 @@
>  /delete-node/ &pcie3_phy;
>  /delete-node/ &thermal_zones;
>  
> +&camcc {
> +	compatible = "qcom,x1p42100-camcc";
> +};

Squash with patch(n-1) please

> +
>  &gcc {
>  	compatible = "qcom,x1p42100-gcc", "qcom,x1e80100-gcc";
>  };
>  
> +&videocc {
> +	compatible = "qcom,x1p42100-videocc";
> +};

This should be a 'fixes' commit, as since Commit a8a5ea012471
("arm64: dts: qcom: x1e80100: Add videocc") Purwa has been ""happily""
running the wrong driver

Konrad

