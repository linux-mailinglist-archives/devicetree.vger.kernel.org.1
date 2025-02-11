Return-Path: <devicetree+bounces-145328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DC2A30EC9
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 15:50:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 262C51618F3
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 14:50:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3591A250C13;
	Tue, 11 Feb 2025 14:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jp+6ziyI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA8CD250BF4
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 14:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739285404; cv=none; b=copL44XJQidcg1DqADVDUW0YaYaqmdNW0wAi+tiOZ09dpE6eXZNBMTPMAqolVkNqdLA13NNgw8E9aKDcqXgw/zCvpRb5rqa7YKIE4UIHI4x2WsBziMOsuYwpmnWgGTHI4uM2XT5l5+f+OrHgCRYhKsM6s4jhZrV8Kd2CNSCyUNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739285404; c=relaxed/simple;
	bh=jdFTd4heaqF1waae3nF4Loe4e9NQVSskphOCed8h7lw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m+lRlsz7hqoqxFq3vweCtrcl99kfO21t5B9zGArfoIAYMMcnOX2Pz2KhbsL8QfCRj6dgJLbrUi56w9erJnPkakmeu4K+9ICD4tDqJAa2AAhrPWmNcUOxja9Bx3POd71f0/Pc7pbEhA3jkR4WD4ieFv0Mk6tJzyxyw0kguz9Gr2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jp+6ziyI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51BB6J9b023023
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 14:50:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	y9QQxW1CrdMOjnr/u7ZG72NR9gv+JDy1eoZ8KaTkW9A=; b=jp+6ziyIHb65iozh
	9RVFlMo/Pi+ZYkw+ukFV/65b+/w7nfKODthOo9qvUziQDjqlrrfUzoYNDdpZ2/im
	RtHMD/h1JF3f/9n09QehWXAnPrb5MSLLOdNBXb7JknzJeUCAEhRog9D/vKWL+LAT
	qz20fnFLPN5DieKa75sy6B16SFDbjsQCALbUjmGNWXg2GKjj4CUDvEAozpNwh+W3
	joP3vGfnfA3nB683zqvCAI9DbwaoFyJi1E1XAyMStJUr90z9Tk76fbYjgfcq4Jfv
	K059w/GChp4VWKRjA8cY+Z4TkTfd0Y5hVaZd1SKtL2Hj24ctVQoxbxmTPIk/TYNp
	6EYjfw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qe5mvf2m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 14:50:00 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e19bfc2025so15337446d6.1
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 06:50:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739285399; x=1739890199;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y9QQxW1CrdMOjnr/u7ZG72NR9gv+JDy1eoZ8KaTkW9A=;
        b=uC23FJYE4h1Mol2YWuQcGBW44T47UE9uAubaerzDNaksAjyWVCBwLCmbJrA4nmNsnr
         xeUA1V4Y+LgVmnMPEpQBCxxWpHacwbhu8OW9qGfCrigF0tZfSLNn/tIDzOZ9XydQZuhi
         lqxnu1K2JCeEpl4mmCp0Uapxs3w7i2nMkm4R7EaZRPB/F9v4PvbqCtgJqWR6O3Bc+5f0
         /6UpfWqIFrcwUQTZID/9i9bsUXLvC8FV5dN/JGihzYtTcmMJ6SmMJEzgpCv98m6l8Dbt
         9LB5diLMISXEH7EatH6h3+u5CNrNSkIiA02pvHtyma1E3NPDXAatqn03KFY5lfbaNUsY
         HivQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2KiSRVPzSt0FqpskYWQ74XHqUp/XtUU7Pe9wE8eJQJEDQlNotANMq+QmVQS7vLA2HJLPrsTNXfR/8@vger.kernel.org
X-Gm-Message-State: AOJu0YztbEd10bUtDGRFgwIhj37bprDNQDouhigjfWJZ6KROJVjft5Cm
	ESVk5jILRVU4KnQ1WysXkCEnek/aDcyOCKJj8b29gV3L2WRqx7KsaqDCKeWZc/mpf9ne1rEfwWk
	WyMJV+8rMf1kitaL8X4n+50Kj23tFv4/i79IktKFR+WCIJs5D5Gg0H3Y0AJaT
X-Gm-Gg: ASbGncvdQLzC77SMRUIj1TylKTUBXJmB3eTfzz56nSBu/LocuYwpHHOiyaynQ61e7sz
	u3hapFEYvECBrf+t9QGG/ph1h+6p2Ic2g27IICip28f5rj5b36VsiNAwV9OBTqduVh5N60uqrhY
	7JsQAogpVl/+uJGiq3YYLegXdnU9KlqmRdydVWp/48PPSeSwXwlX3F4OvuTYHZri10xra1Y/D+2
	u27DtLxK7u0+523UFKLoCF4mqHzOopnj5cNspE/EL6zWxH+N8ALaC8+0ltSVyKj0recUD0GU0Wq
	B1GvmNCoghZIWlJoK8hCScmKNC1k0fZugiQ4cJPoPVybKz5irMVDhSrJOkA=
X-Received: by 2002:a05:6214:19e5:b0:6d8:a67e:b2ff with SMTP id 6a1803df08f44-6e445715619mr91437596d6.8.1739285399570;
        Tue, 11 Feb 2025 06:49:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHkk9DjPa3+ZeT3Nyflq6y5KlqeBXv7S25Hpw0rmBRomm62/VHebINsLa7PDQCcXTd8MmZyVg==
X-Received: by 2002:a05:6214:19e5:b0:6d8:a67e:b2ff with SMTP id 6a1803df08f44-6e445715619mr91437396d6.8.1739285399076;
        Tue, 11 Feb 2025 06:49:59 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7e2711937sm125092766b.25.2025.02.11.06.49.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 06:49:58 -0800 (PST)
Message-ID: <52d29b4f-7ae2-4f79-b09b-f0b2a4e3034d@oss.qualcomm.com>
Date: Tue, 11 Feb 2025 15:49:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] arm64: dts: qcom: qcm2290: add UART3 device
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20250207-rb1-bt-v4-0-d810fc8c94a9@linaro.org>
 <20250207-rb1-bt-v4-5-d810fc8c94a9@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250207-rb1-bt-v4-5-d810fc8c94a9@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: QwEO9QkIw2-B_zvWWtlX1xnsByv_NT01
X-Proofpoint-ORIG-GUID: QwEO9QkIw2-B_zvWWtlX1xnsByv_NT01
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-11_06,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 priorityscore=1501 clxscore=1015 suspectscore=0 mlxscore=0
 lowpriorityscore=0 phishscore=0 impostorscore=0 malwarescore=0 spamscore=0
 mlxlogscore=798 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502110099

On 7.02.2025 9:41 PM, Dmitry Baryshkov wrote:
> On QCM2290-based devices the SE3 is used for the Bluetooth chips. Add
> corresponding device node.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

