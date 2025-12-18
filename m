Return-Path: <devicetree+bounces-247657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C37FACC9E1A
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 01:23:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 798F63028F60
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 00:23:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2192021256C;
	Thu, 18 Dec 2025 00:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pBEJu02i";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iCisjjEm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C357E1F5617
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 00:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766017380; cv=none; b=FmByS7Ald0XygjNuWbxxbtRMAP5q1ujKMOb0UQxUcwDIabN1ziniKapV3lQw+AibjeWwO1exCFXFhm9gzy3QaGtaid+OKn4D+NRD8Mm0qvyB5iyeQN6TFRacI7d7u5DLpmOQ1Y4lydO+f0ifdnjOLU9YvvwWXgFzh/V/JCEAPGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766017380; c=relaxed/simple;
	bh=WyYas91ZPtqU18C21BL8052JdUqheOyAIrNSH6WA2SM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lX8s7KxChp7O16hsorLXSrIcK54ZbdgwyIHdzt1Ro46uevDdZFeMauNR7YnLWZxCt2hKHypBhS5WF/3TOSTIXvwogO+WfQjBttMZD9y1mcn1sVW39WSP3jbv8wKIVSIjT5ZXV9lmxD9P8PryPOl2o7tLVRX7/n6clV4+LMBDivc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pBEJu02i; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iCisjjEm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHKUwIx4092878
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 00:22:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xxVoEXVo9FXoz5Esin4V2C9o
	FGjnPeUwyLB+5DUMaQU=; b=pBEJu02iQZU71zdGbGgnmkvlA8b/ttspr0xfm0o0
	kkB8jRXUU/qnUoLM1++c2XVrQYADcoNzbaf4lH5CZDyvASne+LFmuVMvaZIZYp0G
	fpEUZS18LlZe0jzn9KO2CYZWScps4bbopcGqmLEdGsosZ8Mrqm5f5AjmOyqpMesj
	iVMSTAqxrWR4hk35e3pU37+GyNSGBZHPLfvWJitgU33gFU5vlkUObamUxTmZqixa
	HrEIbxUWE3Mp7wJMTGK01ZvLPrg3n/AiwDu5xcXriDFpXaCMdNRBsK5L4MHCNk2D
	926A4cP2x8sFPXpcyYlREjJc0a1ruDG3gaAhbZugEncgLQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b43mb0hff-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 00:22:55 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88a34f64f5eso2177186d6.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:22:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766017374; x=1766622174; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xxVoEXVo9FXoz5Esin4V2C9oFGjnPeUwyLB+5DUMaQU=;
        b=iCisjjEmJUL/LxEZzX2x6aff5X6xqNIySN/Vr5WlQ56YYH/K7bD0eF63hkVlvm0xSM
         kwTfnDB8jNRxqB0JjNig/yc79FFEy4ti/0G3PEsS2SFcNdzLODhIE24Ugv6TRSPnJAhI
         WXLNnYp99z2wUEmUyC52rpLXT1/d2mZpSsmMI1MDNb1F5rR9wWGzJfYDdFyJ9CxLlhj3
         yNpKYw307KRvYce1cNZCMIKLMRBgVIYPe8GBy8SVZBYj984Q2RY2RcJ4A0wATpaN/SIO
         oLKsng8DWFOPUeumkJoCA5nzw7E2kL70z575lf4IfrCXFL842mWgKUfaDfdR/sp8XRRh
         StnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766017374; x=1766622174;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xxVoEXVo9FXoz5Esin4V2C9oFGjnPeUwyLB+5DUMaQU=;
        b=dm49rgNrCeyroKSR8o61bJE2Qwr1JmbfhfuuFrHv98uDfUVjf/lAnam2AaBvgRxUhZ
         i3oqO/SMsFAqRJtpYnlVjkSlx5B7ovHztMDGzII7X7y6o7C2ChLahHnS7RHp7I0LFMML
         IblS6aqdlgiMeQ517n/ckOOCLzuc/ypC3dzsdIL1G0Xx+Xp7j6SUdwKwO2gS5AYbNFHH
         OvNwzNY2sOACWVrvEWWm28vf9KGaPdmuVC6I/0MJ5qw18+CWn9dMoTiFC/JLTg0+dx/p
         S2Va804DWBn6dx2CWzxIW9GE8Meh6U7xL7FFvzSIBrmDKtrUKoU9x/1oBPydxox4qbW0
         7EQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVltek1BixrAZpPvacxrqSzEh0z9eSR0QlvKZKBDny3bM9OTqSnTd9NrcHug+o6A5zcv8X5R5fI9lX/@vger.kernel.org
X-Gm-Message-State: AOJu0YwfXYYLo01Tft8qb2AcVedb8LZ1G/R+6b41JA8DRhJzMsTzTexl
	t7sytV3gllf1Eb0N54nIy4AxxkIHaS+fDSIiAv/x+FRpNwW5r/SjBLHnBDSVfr5fPTOC67Tqjpn
	VlwJ/arsTSBZGC04oqa7znPBc43RAgYreDsXo4v0N/jr4Ag4RV4CbtJbpWz+el2BXqMATgua/
X-Gm-Gg: AY/fxX4QgFFSHwwlx5uDDJ/qMncpIcdqgKoC00cT6SpcJORjbXX+u56RFkqVSuPWvu9
	PgA4v9KFl8xeXJU9a2XaPN76k6r+MGYaXMlUd74I3OrlYC0ITuCQrEQRG+TiqHiKrbogYJIjTwU
	qLeIoE0deEcjaVNfW6bn6crabkoeFRb0pZD5oef+I5Onp4rzUy0fzAzYvkLkE3KBqETmMlUmAt2
	Mb+2c/DzjC9Pn5i6S9xWjiPtV+2/3taJAt6UX7XYQjNfhfoW+mW04zcRoT64N3CBKF8f4Q/qQnz
	QVLjE+rdUtzvJcZDqQ1n9/vCOkXliR2crHM95qvofbXV4uU4L73ReaBFnWPiEk3M5cGo23wjWt0
	PXbI8RHqaikebmbQjukmhjuw+IQRU8TwPHUwzM35Uto1SbrK6Uuf8aFP2WEXVKzkpShSMYC3Gv3
	z4Kyo2kX2fL4rSASJf7p7fIHg=
X-Received: by 2002:a05:6214:5c0a:b0:880:51f0:5ba0 with SMTP id 6a1803df08f44-88c5271ad9fmr19079376d6.26.1766017374497;
        Wed, 17 Dec 2025 16:22:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFJsttBfnDwtWjGCSe1ifWfSarqRPKfZ8FfLrvYcBczbWxgQkXN1hSIEzGQbHRWi2N2DBCAbw==
X-Received: by 2002:a05:6214:5c0a:b0:880:51f0:5ba0 with SMTP id 6a1803df08f44-88c5271ad9fmr19079126d6.26.1766017374050;
        Wed, 17 Dec 2025 16:22:54 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a132cb5d5sm349573e87.18.2025.12.17.16.22.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 16:22:53 -0800 (PST)
Date: Thu, 18 Dec 2025 02:22:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: sm8750-mtp: Enable USB headset
 and Type-C altmode
Message-ID: <viqe4rn6bd3pil3jybhdr7ledz2ftymkvnmiqymhicxwtuy4c2@xhjyfle3q4z7>
References: <20251216-sm8750-display-dts-v3-0-3889ace2ff0b@oss.qualcomm.com>
 <20251216-sm8750-display-dts-v3-3-3889ace2ff0b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251216-sm8750-display-dts-v3-3-3889ace2ff0b@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: OjI9_0R4s8-hHIpSPwacr0lpxJRx2Tsz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDAwMSBTYWx0ZWRfX/OlooCW2AWlH
 TZoLnO+7kfDrJ1u9SfXBR46ALjZf3WFCnQnO5WCuIJirZ0Hm4j0n7LoLGgwuWaP3l8WkcS7DYZU
 1ruzscwjeM1y6Vd45o1jqPeCvHkQBGdT+O00iRJUrgF9VO+8kdGit/WrBDEjRfBlpQ08kq2kH/i
 2ZDWD1s+hmb/SBqMGi97bCqmWtLMggnbjxI9NPlvz0ekE4NpiO681qVNOhEA7Vp3hYfJz9PCQzE
 5/Myo+e+xZBDl3rkzoytVh8QNXtnnLYgpK08C9X4TDG1oXZoAn3qXHZK8bO10ix/R0rc8x/5w/O
 tnl31bkSjMuYy5FXGzkAv3pEQtfG7vIcU95joBmQyxgvZWhsdMVCC7YJsX6YSJJfQB9qyrhyciN
 tgFuoWr3WXy+jDpQBGDMIar7r5ct3A==
X-Authority-Analysis: v=2.4 cv=NPHYOk6g c=1 sm=1 tr=0 ts=6943495f cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Rm511Lm4PB0MII4DX8MA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: OjI9_0R4s8-hHIpSPwacr0lpxJRx2Tsz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_03,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0 clxscore=1015
 bulkscore=0 impostorscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180001

On Tue, Dec 16, 2025 at 05:47:33PM +0100, Krzysztof Kozlowski wrote:
> MTP8750 does not have audio jack connected and relies on USB mux
> (WCD9395).  Add necessary nodes for proper audio headset support along
> with USB Type-C altmode and orientation.

Nit: accessory mode, not altmode.

> 
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 51 +++++++++++++++++++++++++++++++++
>  1 file changed, 51 insertions(+)
> 

-- 
With best wishes
Dmitry

