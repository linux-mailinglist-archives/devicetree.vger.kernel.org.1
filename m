Return-Path: <devicetree+bounces-238631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 0083EC5CCAC
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:15:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0EB8A34E35C
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:10:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C141D30E0D0;
	Fri, 14 Nov 2025 11:10:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bTFNbaoX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WieTaLlP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7582C1786
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763118600; cv=none; b=s3X2HyHKC9KbI3dXuH69LZuK/YG49BBOh9k8mVOn7aMEnrcbsW94hnACuXWPe/GzECD6fvwKbczchDUu+whT5qNVpej4D8zRQ3SLcM5CPKkQeEfUPGZQX66VhWVANUjw6gquMzpTLr4badIv9XgeoJJV61z9Ddi9oI9PY5Gop84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763118600; c=relaxed/simple;
	bh=EfkgRk3J9QxgqGSmdmFnagNzEvxljlFd770O4c7I7r0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RR7E2nqSYkmwgp5W1LeOReU1kNDKx5duLo/e40OuMKRrVQpSl3mI98RoJRqHxKW3TxIThLpLmJHtpanX57ll3qsYO92dnSZtQ0cqpXVh+1d6oeD/hUY8NyqU3QxQqNQTB999u24fD8AfwZNht0kZe6ZR0x+hlO4/0ik4hnA55+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bTFNbaoX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WieTaLlP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8iqQ91611644
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:09:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wBQSiX1AhTI3AktJtS/fpyR+
	9HhCjXN+yY5aI2My/+4=; b=bTFNbaoXVZhAKbQ5+pxaJIoOu6vmcVCWzmBDncO5
	4p1MAp52pUW9hV3VwYy2lyoEk8q2jhCgzBAKCHkCmXJ9ul4ac75oKkWPoH+cUkN2
	dwvHUYCUBXvcwuAfTHVgPF/BUYILVejQKGad0w/V2+UFe6WfdALf98fN4L/T1n2v
	awsj49FIMBudRKJZk2Pn6VI9cNwgsxwOg5Vl1L7MNnKG+TKlBtaJ7DFESPB67G0O
	MW2gycgt4/D0e41+sqyMja9Hm2GsMTFWeYjG1jBYEljBsAnFszL85Jc9k8fXP7po
	U2+IoHQyXSYcXYviUmHAkGgLioDRIXjGSVoh9y/oaGR6Ag==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9h1wjc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:09:58 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88233d526baso69018686d6.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 03:09:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763118597; x=1763723397; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wBQSiX1AhTI3AktJtS/fpyR+9HhCjXN+yY5aI2My/+4=;
        b=WieTaLlPCiQRawuOV4OWJLegAlODow304iGLjK67rjzBIFMqFL3gsB5cHG47WIAxBa
         An6/UezkipuZmo0C797hFB3A2OSSdD1an+MHzul9KjrdfIZmgCg51bXKRlVLNL27mlEK
         RjZnEYlmp4UOKNqpl+HjuVEQXM8KLACjMGvB/i+6Uw0AJrdKYI6jAbs/PR5utRq26DxH
         oPd3fs76prQMxdZlFbmdJrC733gw5vKvJAyJRsCWPF4u4HxNJLbCG9wTuq3eU+XCqutq
         cK+CYm2tyKkwEhRglyhlZdHgbRArWU8dSdIz+wc3EdlXwIty64R2cLhpBzFYsgh69utA
         ejsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763118597; x=1763723397;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wBQSiX1AhTI3AktJtS/fpyR+9HhCjXN+yY5aI2My/+4=;
        b=WllpllkJrv7smK4Vhe2d+V2OPVWd9h7oWzF/1snSsEhVt//Gm6aCn7jknFL5EIDDGs
         0X4Mfzv86k593sVM8tq11idwSgKzlHNSI1mE9oDTXJbupeADQiXVSsROsq1eupDGH2ID
         qcIeVqCkyXDl+WK1Cmb5yB//85/9mUlZPBOdVURQ3J4Ms3JfdtJmWzTx7FtRYi2vpeb8
         r23jZE42/My24Fk92J5BPRVmTZJFpp6f2oS0FPYePwsZyriKSpIB92qiIJgmzJvlXpPB
         TF+Xwpf8uFwe6Y33owL6Q/vhCPH7x3KiM5kSecOu9DeGNPtKcP/2LHGj8UwfPIv+TKe9
         370A==
X-Forwarded-Encrypted: i=1; AJvYcCXxyY/Hq2x7dS1JL4bdxEVzIAV8hdubzPDIT4Dwbh5Uzf6BOgCf/yQj50yfSV7YM7A2wYRjvVMwTtj6@vger.kernel.org
X-Gm-Message-State: AOJu0YyXHN4ROxCUdSyGe4j+WRgd5KUert5dgcZcKQV4g73k8eU9GKCb
	Eir8nU3H1TeyScv5Jk1A8NCMdthWmI1q7IqDaruFelw0i+kSDUYwLDS6lPna/Gao9AkIFFx3T9X
	71IvuXXfUVYuofHR5uFvEg2h/wKSVx2S/A0yLUFwDQMvJJbrqkeerNA6UrrDbVLMb
X-Gm-Gg: ASbGncv/8OL/WDuVH2udsLOw37gkmy+pMA/ptbfA7Dh3PHyrwt9z+WKelYpLAb5ASTA
	IRVyRR42cppRrl5zpXoGp017G/jKBwvMa4endNjaLPrapU+MzESW0MB+chDMmi4R2yCi4NjcG9v
	VZxAwyJHIr2CC4IchRMocxFL9jlD6gZMovar7pBkAtL+NHu9AFawG+HRcIDIeGtaBNWSf63nh/U
	dWWZxrvzUqU3/fS+H7bHMI6SGt2UTJ0R7rkvU81oqMxAcfct+1FLG3P+OBhke/cAm+4JB4DGttl
	XMu9c7ooLsYn4VEnsBCeBSxAfcFlY5azOmsTqWg8uLqKjnO2Ibx6Uajlm2gyKkqn3xQu/CX6FvW
	gnztId5azMgUdZRY7ZyPYqcr1DotOpFWCFjvreGpJoZ6/4PTV0rwmMwbExMiPbYzeOqqAu+qKZn
	6wY35joFBLaPSa
X-Received: by 2002:ac8:7d85:0:b0:4eb:a24d:8c24 with SMTP id d75a77b69052e-4edf2142ad2mr38874921cf.67.1763118597479;
        Fri, 14 Nov 2025 03:09:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFK+9+SvZia4jqDbTaZLAogfJK22m9sm1NMlYIXS3avqIBT31C2rlTSqkAFJsulJpvfGYAB8g==
X-Received: by 2002:ac8:7d85:0:b0:4eb:a24d:8c24 with SMTP id d75a77b69052e-4edf2142ad2mr38874601cf.67.1763118597067;
        Fri, 14 Nov 2025 03:09:57 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5958040d89csm979331e87.107.2025.11.14.03.09.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 03:09:56 -0800 (PST)
Date: Fri, 14 Nov 2025 13:09:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Tingguo Cheng <tingguoc@hu-tingguoc-lv.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>,
        kernel@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Fenglin Wu <fenglin.wu@oss.qualcomm.com>
Subject: Re: [PATCH v3] arm64: dts: qcom: hamoa-iot-evk: enable pwm rg leds
Message-ID: <2pl6xvgotxwesfujlriq55sbwhy23yzna42p46ylh3apqmuop3@wtn6wsjzmxzr>
References: <20251114-add-rgb-led-for-hamoa-iot-evk-v3-1-5df1fcd68374@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251114-add-rgb-led-for-hamoa-iot-evk-v3-1-5df1fcd68374@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: DaS_BesJxR8ICw0OaVTaRiolkdLwEwFm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA4NyBTYWx0ZWRfX1FkgFXaITJmS
 jUkofc/HMh5kZWoLDLE+/X+b2i8iiK8jiAgRpMI7eo3l21h4Pnx6ymmJZiWftV/DpVL6+/CeaLQ
 m4PDvvwG/xRjtku9KD2dVex3mirwE/RQ2rtbTJvz7moLgDt3OyPzixYWLl7HBxck4pqtuVcfFHM
 JlHvNwifyPvmmzopD0+FGQ0+cwkZ+mpxv0gYFXBuSP2PG9IjU+dHzhCX3G2h6Ckfp9FAIVLYQIW
 yWfU75s2bXGrVdOQMeGPch7Ipui+1U6MeY97ImR2TBYEuuYUcUglzfkwZA9xP0F5i3M02KFAs4t
 5WMiRFRZve+JqeiKlqzKxKwHgSS1rF4/u6pjIRiw24EZ7+i/RWxH6JyV6c3UdjBq00HaAbQvMgC
 TANqCIPLf2OH35La4rXgTp7TExKz1A==
X-Proofpoint-GUID: DaS_BesJxR8ICw0OaVTaRiolkdLwEwFm
X-Authority-Analysis: v=2.4 cv=V+1wEOni c=1 sm=1 tr=0 ts=69170e06 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=OI_lq_Cb0pO6qaT_r8AA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140087

On Fri, Nov 14, 2025 at 12:13:03AM -0800, Tingguo Cheng wrote:
> From: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
> 
> Add RED and GREEN LED channels for the RGB device connected to PMC8380C
> PWM-LED pins. Omit BLUE channel to match default hardware setup where
> it's tied to EDL indicator.
> 
> Signed-off-by: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
> ---
> Changes in v3:
> - Rebased on next-20251113.
> - Validated the function based on the patch "[PATCH] leds: rgb: leds-qcom-lpg: Allow LED_COLOR_ID_MULTI".
> - Link to v2: https://lore.kernel.org/r/20251030-add-rgb-led-for-hamoa-iot-evk-v2-1-3b3326784d7b@oss.qualcomm.com
> 
> Changes in v2:
> - Rebased on next-20251030.
> - Remove BLUE led channel to align with the default hardware configuration.
> - Link to v1: https://lore.kernel.org/r/20251017-add-rgb-led-for-hamoa-iot-evk-v1-1-6df8c109da57@oss.qualcomm.com
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 

Commit subject: PWM, RG, LEDs.

-- 
With best wishes
Dmitry

