Return-Path: <devicetree+bounces-171957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 27148AA0B3E
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 14:11:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7B8AE17D9EB
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 12:11:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A39A2C10AA;
	Tue, 29 Apr 2025 12:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZzPs8XHl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B77442C10B9
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 12:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745928705; cv=none; b=n5N+5Wyy7E6ZDDe6Qvelb3ALlnvb8tXzWkMGOoM6nP/uy7/2pXsJhNp1IYlgLgHBCKK2kir6LR5aiQwsy3pH68rS04zECrgLvbvmRmoPxR3G3m/lGqkZHXgu1HysnChuPIDHnUXsk+xeWgwy0cdokEh1x/5dr/K9HaRX5HkOw44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745928705; c=relaxed/simple;
	bh=baK6jno6CnUVkoUHnmEbtLiQyefylSMvn3JT1bVnQnQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LgPi4sp234ay9KPamRGgYfByST7YHDaHXMnWVTBE4qSML7MbnfAL4Eb13SbPRxoOnX8IMgv2eILXYR6ufZDexjhQnp3jKHV41xzzR+3kp3QM4C1NXofUa2+lEjAWPmK3JnnhymfNc1d4L0SXJ7kjZxuGfM2RCN3DBl6TzqMfLJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZzPs8XHl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53T9sgYT015380
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 12:11:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rPfDc2j4zIQ8zpqodkBZ1iAk
	HQ4HDml1Yp0gv+Nadas=; b=ZzPs8XHlsSBUiBDfKYd0oHV2su9LS+ytFBkNoqVG
	bYxayKJka7L8CEF+zZBzwkBZrVtHs+5HoJlnjR89+8/pXRRb00kgKWlMQblCjceL
	iF+AMIARq6cARt+S+DtW2UgGAjW+F6xcZJoByZnrztocArqJrDf7PT0FkEd7JmRy
	4Ww4RbEG35i9C979Q2b9CFZ6S2+w2zX7PdrjNmn6b+dwAoSttiXBY6fuNyFxo7R2
	WtXpCCJw9J7othlkqxEmZvRyevu5rWkscV6Aec7KQEVCZ0cw2cgXZWEP1ZKu/cN/
	VZIz8Zx2rUZwHYem/pxYIFJVjyUXQ+He6bu3T4x9wC81dw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468qjwvef1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 12:11:42 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c543ab40d3so932979385a.2
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 05:11:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745928701; x=1746533501;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rPfDc2j4zIQ8zpqodkBZ1iAkHQ4HDml1Yp0gv+Nadas=;
        b=FIGf7W+gUAp+iREUMYyvPYtUE39rtSvI9YZzySNLZXyr+2yUdVJu4kQg1yhiFD3oSQ
         EeGpGFafNoxrFhwk5YdyS7nMel3UiV7GI+NKZfvrqHsRF7+hEO40PPn04PgSKeiEAQkc
         sNuPQiB7P5xxYhla6aU4QR5iT695FebIMM2Cgls522o/Mlifp6NsImrHGKFwu+nloch5
         SXkv+9GFhpUG7sz24LmCAmcR2hIfwJn40QbMpgsPnXRa/ACxXvq7IqfEVfvNDP1GXfpR
         UOM2Ukifidn/1YenLL5mNCzO0LGot6wshZ3ueh9NoGk6w5sMb2NyuX5tG9qqvYiISQmY
         LrfQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4QId4Vq/iYPtCGenDrqaP7KO2hm+XThVbpUK2I4ay3IpKoL89lN3u8vZ0ik3Xx1UgybtSVKlyAt8T@vger.kernel.org
X-Gm-Message-State: AOJu0YzhOEGk51NarkEuchShnPQo3q+zr6ZyPTXyXiPERKCZi/RtFD2w
	Cj00sJxykeaq8gwjSlEaTbCuZER5SL6qn2u093jXl/wHLsONwhnFGAEAyUVTki826d0VEXac3yC
	GIzLpG6bJ9dQVMs7HAUxloE3KzzPxABY54p1PsoveJ0VFXDn7SDH+Pns9SwSw
X-Gm-Gg: ASbGnctcfYCX9QCUstbY0gFwX5F1XP9IISQINANIC+RGx9qxAlz1AnpdpIBYFyLHMl9
	HbYnWkztNUvwtWxxS/C+7WexUFC5QtXcCCKT1bLKTGZ33x+qa2fpg0QoWsv1vI+jpPsLLjzMO3L
	zE/cbsJSAnOR5Eb5++jXVA+FlkY8ar4sVLzg7lBUNiImh08rIGhqgPUGZo49Hcu/o7qpI5Fe9O5
	i7TcCNfCtgnabIkJbVB1ugY2rzuiHdDTYZ7EQiNdNJlP/8tAlwnA6UBoalHp6Pk4Rc1ept4igy5
	5pzr5vlUDovrH/Sbl81QCW1NlV3cLUGZsVaby/u5VUsevulkjnXE0fIeIqgh03nCdqkExJRDRo0
	=
X-Received: by 2002:a05:620a:d8b:b0:7c5:f6be:bdae with SMTP id af79cd13be357-7cabe6a77e8mr347149885a.20.1745928701718;
        Tue, 29 Apr 2025 05:11:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGkEoObvl5ITpCCRC9WTTdJ8+eec2qadspvMIHzjKAj6kGxUV25FPfPKOPPn0iY6tiCGewDRg==
X-Received: by 2002:a05:620a:d8b:b0:7c5:f6be:bdae with SMTP id af79cd13be357-7cabe6a77e8mr347145285a.20.1745928701382;
        Tue, 29 Apr 2025 05:11:41 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb26dcdsm1855850e87.33.2025.04.29.05.11.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 05:11:40 -0700 (PDT)
Date: Tue, 29 Apr 2025 15:11:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Xilin Wu <wuxilin123@gmail.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Srinivas Kandagatla <srini@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Konrad Dybcio <quic_kdybcio@quicinc.com>
Subject: Re: [PATCH 0/7] arm64: dts: qcom: x1e80100-*: Drop useless DP3
 compatible override
Message-ID: <oxckk4kizbml7dy4uvcb2hhkl4f72dp5axmtkwhk4duevhlpbs@4pi3roor6pp4>
References: <20250429-x1e80100-dts-drop-useless-dp-compatible-override-v1-0-058847814d70@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250429-x1e80100-dts-drop-useless-dp-compatible-override-v1-0-058847814d70@linaro.org>
X-Proofpoint-ORIG-GUID: pCEPT6SmgxrNTzhkOIhhkjqgoF3fhb1A
X-Proofpoint-GUID: pCEPT6SmgxrNTzhkOIhhkjqgoF3fhb1A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI5MDA5MSBTYWx0ZWRfXzCYX0Y+14Tdy iD19G5qQJQrwnIrkOpY2kgXb6NAIwRW7MJR/C8YMMoVU6ukBWJOPxrNzo6rA0SHy+XuuRrDL05G TJJjTcm3gxolu14qCXCJSygUDHTSPJYGrm5MBfLopkLo8uJONY8N719QLl0WJFmYv6Kt1zfE8yM
 gPtoKaMK498OK22DmhbPTfJOIFEe5CNZJY0WFaCZFN465cePcilsiS12KBCNRRtQ7vAYcge41vt 0RXfBh22mURCsvOAnSR1689/pTNpuDw30oVqzqweSdidN5I9GvHPNmJbxdvX+9/u7YNSruk4Z7O Lvk0rYQxZlHo7MeklmbSI1busADUcNYsuBgbRZ2BdP//H7ymXAQG2wymxWHHD5aStQB/LEiSSoz
 VRpbsKjvvTmpjwTht6F0U5w3kI3ZUHL3qDcNaFxhRZ0+TJtNPzftYXYyAPky81Xedb6Sh3H/
X-Authority-Analysis: v=2.4 cv=c/urQQ9l c=1 sm=1 tr=0 ts=6810c1fe cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=L7NATBzoXS_OuuUMTpMA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-29_04,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxlogscore=742
 phishscore=0 lowpriorityscore=0 impostorscore=0 mlxscore=0 malwarescore=0
 clxscore=1015 spamscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504290091

On Tue, Apr 29, 2025 at 10:42:28AM +0300, Abel Vesa wrote:
> It all started with the support for CRD back when we had different
> compatibles for eDP and DP. Meanwhile, that has been sorted out and it
> is now figured out at runtime while using only the DP compatible.
> 
> It's almost funny how this got copied over from CRD and spread to all
> X Elite platforms.
> 
> TBH, the best reason to drop it ASAP is to make sure this doesn't spread
> beyond X Elite to newer platforms.
> 
> Functionally nothing changes.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> Abel Vesa (7):
>       arm64: dts: qcom: x1e-crd: Drop useless DP3 compatible override
>       arm64: dts: acom: x1e80100-qcp: Drop useless DP3 compatible override
>       arm64: dts: qcom: x1e80100-t14s: Drop useless DP3 compatible override
>       arm64: dts: qcom: x1e80100-s15: Drop useless DP3 compatible override
>       arm64: dts: qcom: x1e80100-hp-x14: Drop useless DP3 compatible override
>       arm64: dts: qcom: x1e80100: Drop useless DP3 compatible override
>       arm64: dts: qcom: x1e80100-romulus: Drop useless DP3 compatible override

For the series:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


> 
>  arch/arm64/boot/dts/qcom/x1-crd.dtsi                        | 1 -
>  arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 1 -
>  arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts     | 1 -
>  arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts       | 1 -
>  arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts    | 1 -
>  arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi    | 1 -
>  arch/arm64/boot/dts/qcom/x1e80100-qcp.dts                   | 1 -
>  7 files changed, 7 deletions(-)
> ---
> base-commit: 7e69ad9a1f7ba8554c4d3d1ccbffcccafcd45c2e
> change-id: 20250429-x1e80100-dts-drop-useless-dp-compatible-override-db8562c6b7cd
> 
> Best regards,
> -- 
> Abel Vesa <abel.vesa@linaro.org>
> 

-- 
With best wishes
Dmitry

