Return-Path: <devicetree+bounces-255422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6733DD22C08
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 08:13:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 17485301E22A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77FAD22A4E1;
	Thu, 15 Jan 2026 07:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EwPMmi86";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZOocEM+1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A2D1F875A
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:13:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768461218; cv=none; b=VB3wX5SmCFT+bJmlaLgdOQSsj75MXU2DMblShFUIro0Wj4GQKyqdvBTE53+0B+wADjUk7rCEAoVrbXvBjebzrrUtahDDGfm0RkY1QX0m0lt2nt8/R2iFFn64tcTW5AhJp8n0Fs6xl+CTgf+BGwVsJndo/ye9hV0x1zen+aVgIQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768461218; c=relaxed/simple;
	bh=yBmb1w4ygoAnN+jTj6OLmmaCL8u8xl/1Kad52GRhhgs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FPvSLjl6dTcqZXvbxy2z7mNTt7Dhd7ZXtt+4fhrQ+1fqlUoR/dPXi330TR/wEvxg58JSVwdy/4AuKYv9XWUqy0x97V+c/pSwcw0QnodO/DCqUpwGm09dSwExKHFPxT5RnN1Pxc47k8OIenXPHFN4o8P6j58yTuTVZfoqlwMhJz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EwPMmi86; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZOocEM+1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6g4Dt1692806
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:13:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=R+ejjWVZ2PbIRK5cb5+0gfue
	6ycDWTZC5kWuP9g8otk=; b=EwPMmi86puKYXH+4fOWgOrBAD4I+49UVXWT0fSkW
	vCgBlM6ROGR575O8DbbaOSJkBA2uArYy2gzNSJxs9kOVPhq+O8Pldv5MbkaItByb
	/J75l6Y/foHHhhTfO7n9BGqEkMTgP8kz8eRIJVB6jao2Oj9U1LES2JjRtvmIgDDv
	2kL/r+TLdfaq98Mye5MIsUfFK4vOMrdjs4aUuQuDod+Dy1Mt8K1GBks1a566qLtq
	3+uB78H7M/A4sHqXSCchurAYO1V8/Z6gPd43nigm81FWRpas0EEzvuU412z0qreZ
	3wwMCPGVXZjvVHE8AAaZYuyGtLc1mhNTC8gGKLmbGQX+Xw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp931knvw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 07:13:36 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c5329ed28bso160034285a.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 23:13:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768461215; x=1769066015; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R+ejjWVZ2PbIRK5cb5+0gfue6ycDWTZC5kWuP9g8otk=;
        b=ZOocEM+1ex2DvKQmjIdWcb+WitZDVgOPeK0A3yQjYcX6+4epbz0+lLSgVIIkjehtXh
         Yr6hOnoBgoGmqIzeM5scnw42REP4tUw0LmDb3IIlo6B9YSo2LDbWlr2a1E33UHPRAWcf
         qxKOA6laflCDacX36QICXqUpd1I8xULXAjh1GU7HQsyaD4rqvt9w5E4F1jKEk9/VdbgG
         LJE9TbuYxZzyrqmTvlP6C5IqO+u2WIXJ0VUWXvs6PHMal0FRqqjFsfhrYvUIWxbZ8itu
         64Pzh7oGdzTMX0z8CtveWvfYCF2mh3WTlsagtHIcu6PXks/cRZve3YI1uYsLbGIuWnKN
         w1CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768461215; x=1769066015;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R+ejjWVZ2PbIRK5cb5+0gfue6ycDWTZC5kWuP9g8otk=;
        b=MJ2r6mNViLbRlwiPqXkCYB8CD6lty2CMSr9uOkuL2RpveJ2bnLgFpcVhjSwOnHejgG
         iXufSxNtosqqEyfKwi5dG30PiQ4QSZBl9bFDvJNlxz6zi2Q74gWGbb+//RvqYZ8y3E8S
         VoXebPA+GkYXJMlIfVaRQbq6V+15nmppWz3Qddrb7QwHhk3KK3sI7siID/b2ys/+ee+1
         p501wckBrENRW2YdTTDTP+h3oQSw4wQOmCilzOD1cmvfic8XWwdLUleF+br0pEk6uIMA
         vvp/AWCTvHNSsFlGDxUFdFSn20Eqd/pgi328U83+yYiW3OhyiyWwvhaP5DSttBo/s2ZT
         TG0w==
X-Forwarded-Encrypted: i=1; AJvYcCXYBXIwM47U2LvlloC6Eat9x+tF51a2a52/upwRTyCf4srYH2O/47DRnQvyojbBZXXtzM8jCSXlvB5f@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4EBm4YRkbpNRFvmIzimQZcWglNB9ihH4TVSMnxRxd4yOzQV2i
	XqgV4Cx89BY0/LP18aXX1jxZL8t3r/4roDDuXLHgHH17NYdgPH/7zVL3HxVNqNsaHyhqUUlbgl+
	bNDKTzNcLx6M7wobOTIoyzga5xPLl6f+qYG7Hdu4GbddtcKjXSuqC5NeOOIOPTDeT
X-Gm-Gg: AY/fxX4L+sTwUEUNviIcg9Iheep2J1/CCqX4VFOAaJGkHohIj81Ptxta0khyOjhouUa
	GAbVZLsvOIlQV5+fifWrNbFd/w6cCY7TrepnV58AEee2geCdSVx0L0KBJCAuVzgzEdbfaV7b5+6
	HEnFIKWZfDTWex0QZMARnzcDR2x69V69r28p9NAivA5cuh8N+gRIRS4j0LaBHum/9FRRlBbqCBM
	Nz9hg0EhRzMxY78XdeRT3EWh024uqZbG65TiWRJE7LuBC6uLgBi7IeQMowkr5DS8BDjNDoh9kGI
	xPrfHeF27yLGo3pPKJN/04yInFDIXyUujX26w7jN/q1nBMtZRHthsBNOkuS0GCKkJ1fx3lvrGoQ
	Gw8TvHex95v05r+niCWBDJPSMoy5AI5jtLHo0bfVmTlr/gZikoEnz/oCF+M4Etl7676gP09L1vy
	ChUtMh/F7rc5AYEHXrWnzKhyA=
X-Received: by 2002:a05:620a:1a25:b0:8bb:a037:fd94 with SMTP id af79cd13be357-8c5316a74f6mr591415885a.38.1768461215553;
        Wed, 14 Jan 2026 23:13:35 -0800 (PST)
X-Received: by 2002:a05:620a:1a25:b0:8bb:a037:fd94 with SMTP id af79cd13be357-8c5316a74f6mr591413885a.38.1768461215160;
        Wed, 14 Jan 2026 23:13:35 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59ba101bd2fsm1457699e87.11.2026.01.14.23.13.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 23:13:34 -0800 (PST)
Date: Thu, 15 Jan 2026 09:13:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com
Subject: Re: [PATCH v3 06/10] arm64: dts: qcom: kaanapali-mtp: Enable ADSP
 and CDSP
Message-ID: <o652whod5flz4k5qy3lpltmdyecgn7q7vbi77wpcqtpurqtyrh@kqkifqj2ntpu>
References: <20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com>
 <20260114-knp-dts-misc-v3-6-a6cc9e45de93@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260114-knp-dts-misc-v3-6-a6cc9e45de93@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=BOW+bVQG c=1 sm=1 tr=0 ts=696893a0 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=9hHB8HAiLHfe-cDyoLQA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: haFm9QI5OmisrTRrAmpRqfbd60c--jkn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA0NiBTYWx0ZWRfX1Zjddz4vjGOw
 Fmcr9MKopMC7t5vYI33JCp/IACBZZlh2XcsbwnhO7/v1Jp97MiVvF/ALmKxokkEKMNf/CvOlQiW
 63ti1PMGg5rgxhujZpn3ixjfTcTixzPWnVuwtPDVewsNV4b8X8cC1teWSXKMw2DuSrKp6P7d98n
 sDigcNSiLQSuSUwUZn4npqfdYp8HANmL/5/As+m1QqRJPt3lzsf4SmZo0X6q0QGCLBr8VksOgi1
 OyXm4cNc6Ikfvb8fcxppU+l/zFjK/KP3RDQOyhNWtyGSuIiBFxqbIpELT8HCQ3SQsPmhhgXtsBC
 jAJQDJVkrdCam/UkZJawMTJ/0m2M//H4PW2iXPsUxBmuRd7rn4YId3WzeuFDYRClt1fKT409jcW
 SBu7seoXXgy+pBWkkJKpmXesIx/iRusDxz4Uc34zH0Guse1j+1HEkd8gztXzR7avmf6BbhZu4jQ
 YPzXj3H3fw2r4TeGK9w==
X-Proofpoint-GUID: haFm9QI5OmisrTRrAmpRqfbd60c--jkn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 adultscore=0 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150046

On Wed, Jan 14, 2026 at 10:49:08PM -0800, Jingyi Wang wrote:
> Enable ADSP and CDSP on Kaanapali MTP board.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

