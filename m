Return-Path: <devicetree+bounces-250396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 37737CE8D8C
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 08:05:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4685300F8B0
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 07:05:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D0002D2381;
	Tue, 30 Dec 2025 07:05:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BMZPMGh6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CGW9CEK8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B77C23ED5B
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 07:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767078335; cv=none; b=r3obQiK4YaNo4JR5ZUyMp2P3aMMW6rwr74Q/kvC7Fo0bi1QNM+41ccWsddmtmxGvYETVBYynaRzsTlfrfcbSEJH+WWRekYlmggwjlX9Jh+XBaOo3XEqIsveGjIWKEoMVn//UEAsBPLgFt0c9FCPuJoS2l7QlwpU+NqJreYnE5oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767078335; c=relaxed/simple;
	bh=vTeaLtwk+S/vv4xd2A+/GnzT5sIQ1T/mBpGFxSLCcP4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rogInbwGoj1HIrhzpyqpJKLuX5Q09pZz63Prw7a0zlD1JXZGlH1zPE/AyxGGf1j3pWxTZXuKA6zfUOl+g1F2Er6qKdfRiYTd8/OwDgnnFp1D5atu3366MikiiiYtN9dNco7TjiaqbBxwZY38p7VD+xXrc07DsRuNCWCscn7HMgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BMZPMGh6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CGW9CEK8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BU5RRVx898837
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 07:05:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9p0a+GpKcnFGU7FQ0mDsnd+V
	AL2s8e+Im/DSSaCccmA=; b=BMZPMGh6/QqfJquy8mK5HJwxw4Z8NHPWqXyeF0Wy
	PQjXBW/1fRHyEM/zWWcDfroYkW/lBHtYr6kSMZoImtkLLJT7Jgjk77ejBp6XDWMv
	e0gaoUPDA7g5RYYwpuDlLqjw9nlJVkeWHlmOoxVZzny/AD7SlByc1O0Pcw8Sx2kF
	cwsXcta+HEgAJxGXzoy0XAhEBaWdnyieleS3O80GXO3s+GU+zHEOvUmj5ufXiPkB
	Gwz7sN9wAcmFyQiY6Num6Y7ZipoVEcuKv4ef0eXhSc5jmhvCdhoUKC+CxZ0ZbJ5z
	4KaCC7PShE0QO2v1+Q6QtfnadN3U9ygkPPCUR9ssUcM9Wg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc8ky074f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 07:05:32 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee0995fa85so293302361cf.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 23:05:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767078332; x=1767683132; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9p0a+GpKcnFGU7FQ0mDsnd+VAL2s8e+Im/DSSaCccmA=;
        b=CGW9CEK82+yj4aPMQA8+5OrzsrPiv4gikT3AhkbANW7i6tDuoeTxH3fRWOVfxhwHYQ
         Y+QI21Ff/jbhNT0c1U8mJj6vBlZxYlaqE6xak+PxbrDDoDAysUokTQU6mgx+N0eRYMqB
         nsQVr5vM6vwo7lus3DC/4BYm3Vd+BkvcQxxhS+X8n8v3LHKiEECiIYIuR9ORl3EIH62E
         B07yypDo2z51fJienraZU5umWYnUDj8ZyQT83/x39iYM6GbTiLoQNEXLumkO6iq/WKvs
         JKtxEYkV3t+3NY+cHoAx+lpGWXWg/ik3BDeT0Ee2HciYI0ThKp8d5sFJtsmsgRNUpkQA
         zuNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767078332; x=1767683132;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9p0a+GpKcnFGU7FQ0mDsnd+VAL2s8e+Im/DSSaCccmA=;
        b=GelzgMF++gUAStdZKDmTj2NH0piMFiQ+BNBaJAVHv4Qiyss+2ko43KgNpB2fluCsCr
         AYb+w2zakb9eeva64TGsnezKl3uHfs3Ynu2Avdm9GsrAdJQiy0ykyu83bI8l3KBSRN97
         vWYEfJKa0ZwLD9TubkzhStgJPJSDWXgui5ncL53SCIKOLszfySzzE9vr/iwqzzExQLh0
         QpFBMKcadw0xQZw6gNiJ1fnHyPzFXxW1lbiOZUieHMcwzJlGT8yEzczm7bevp/Ts3chq
         zfUkltF+zSxiHjPw+Uy9omEaNRS5HmIJaHZwUf8yWsY/5p/sG7EgWFiu0BJnMxM27tjr
         3IYg==
X-Forwarded-Encrypted: i=1; AJvYcCWLgd6CBc+6vdvnuvKM8NmWOybO4/oaDTAWZgxRTleycjKj8hPWxD/K4rawYPD6RS+9DJQIw/BdPytP@vger.kernel.org
X-Gm-Message-State: AOJu0Yyp8op0gPEJM78kA0IwuZdW2TgVyj9VzFTg7yuAfRpYyHN0q+Cg
	/xaFJKPMgfPSvREwmOMoYCqylh9EQvFDEK15ZU+9W7xR3ch4W/EaBLXmoTNvRgs1QXwp/eVs3D2
	PRLctvqrSJfr9qIVMaCCtV79/o3mRkOJ04G0TuJWc1t5Fvv57hO4ytChzH81eJghw
X-Gm-Gg: AY/fxX5z9QF+8zINlPxXIs5EoCWmABDg4dIMbdQOvczcwfFsQ7+pcnmhdKQ5qD4Z+96
	pk3KZqwCcu5D7IqYdu7Q1tHbO7k2VjfcQDy4xXoXjY43vSWEkiZecHLd8j77ZtbqW7mRuoX2Fbi
	cGltO5C/9WHZ+C8pXIwrU2JBEZ86M/2Or3xcn8iV6RtXe6nCBwpITSPc0mRaMGV4lAKtzbkiy3x
	pdedPx1sx6nN3lzpL09NsSp2D8NaDkpawBKmCT8sDXAaVHS45E03vxhHOwCZRfPUvqCsK3pgzGF
	bdhyuepZolTjZWFoHBE0Qx5kzBuobu0ppov6hwZqUeI8psRFXf0STP2auJGdu1Cd23k32IOCgy1
	qD2afDY/JeiEZwr41G/wtNi8BIgkr8PhRKY4xJGt02YQuuO/Y2oNW12YmjgJ0J/1Prbcw2QTLvt
	ksOytIcNkiMPr9lrw+Y0d0Iaw=
X-Received: by 2002:a05:622a:19a5:b0:4ed:da56:7a96 with SMTP id d75a77b69052e-4f4abda191amr514000981cf.60.1767078331779;
        Mon, 29 Dec 2025 23:05:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE01b8kjYquQO4QeTbEqpR9AnjDOOgTrrna4Y9YiMbaigy3wM+DVcm+TFqtcTcwyVCpCKEbAA==
X-Received: by 2002:a05:622a:19a5:b0:4ed:da56:7a96 with SMTP id d75a77b69052e-4f4abda191amr514000631cf.60.1767078331343;
        Mon, 29 Dec 2025 23:05:31 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185d5cbesm10344530e87.13.2025.12.29.23.05.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 23:05:30 -0800 (PST)
Date: Tue, 30 Dec 2025 09:05:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sumit Garg <sumit.garg@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, akhilpo@oss.qualcomm.com,
        vikash.garodia@oss.qualcomm.com, dikshita.agarwal@oss.qualcomm.com,
        robin.clark@oss.qualcomm.com, lumag@kernel.org,
        linux-kernel@vger.kernel.org, Sumit Garg <sumit.garg@oss.qualcomm.com>,
        Prakash Gupta <guptap@qti.qualcomm.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: agatti: Fix IOMMU DT properties
Message-ID: <yudvagpfw3tfemvf3wcr62jrlvxfo5yobgsrzj4nechtqdxeu6@i2pfy4ys6qlj>
References: <20251229071258.456254-1-sumit.garg@kernel.org>
 <bylruidduy2u4lsqlhzmohahgkm633hijffi3s2wt5ojeaotk3@awulzz2qdg7h>
 <aVNf-lZ1KcH3tRV_@sumit-xelite>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aVNf-lZ1KcH3tRV_@sumit-xelite>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDA2MyBTYWx0ZWRfX8wUGqgJMXjVz
 FbRvSSJExd0bWGebv39bcSbLqwuto29PFPWa9icam1OpT3wut2M1gYFYJ8MAvbSrOXLCgPYPNCI
 ISl2ll+CfzlFU8/sUkvCrOgiuZUQHnHBWkdEPcXHlxtI4m/SfhnilSjPaULdVffbWoTS6CFUlnL
 z0xGjzYMrVDWLKDxh/9ZBOp3nTuqAhCyKc1GFWq10UcZoM0u85839G8JK141nRgAOqEfbARi9IV
 ETb9cbv/IZCEGetezoxqzaQfDLkRo/UBB0peyW4xpaebLVh4SgUjOQj2KweWTJKp8rDk7n+1oRn
 IC9laA7x9uGTQVsJt6dsZv3ug8zuoF6wKrtOJ22Wh9q2RSsemisvnGC+j+l74pSzsvKrJ5gH6Do
 DbWzQUkssYfAN5KtF8hmmiXPZM6W5fD3eXH/o6+mrLnur7Z2QuQu70kKzEFXYpJAGvotap4I9yU
 zstQL5iC257AxbB6sNA==
X-Proofpoint-ORIG-GUID: AByyCSE7qztgEQDlmU6z00h7vdnVMlLk
X-Authority-Analysis: v=2.4 cv=BuuQAIX5 c=1 sm=1 tr=0 ts=695379bc cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=a1r8x7AS_Hu1ar37CrEA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: AByyCSE7qztgEQDlmU6z00h7vdnVMlLk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_07,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512300063

On Tue, Dec 30, 2025 at 10:45:38AM +0530, Sumit Garg wrote:
> On Mon, Dec 29, 2025 at 10:00:02PM +0200, Dmitry Baryshkov wrote:
> > On Mon, Dec 29, 2025 at 12:42:57PM +0530, Sumit Garg wrote:
> > > From: Sumit Garg <sumit.garg@oss.qualcomm.com>
> > > 
> > > Fix IOMMU DT propeties for GPU, display and video peripherals via
> > > dropping SMMU stream IDs which relates to secure context bank.
> > > 
> > > This problem only surfaced when the Gunyah based firmware stack is
> > > ported on Agatti replacing the legacy QHEE based firmware stack. Assigning
> > > Linux kernel (HLOS) VMID to secure context bank stream IDs is treated
> > > as a fault by Gunyah hypervisor which were previously ignored by QHEE
> > > hypervisor.
> > 
> > We are porting the underlaying layer. Can we make it to behave in a way
> > similar to the _existing_ software? If DT was a part of the firmware, it
> > would have been fine to perform such updates. But as it is not, we
> > really should try not to break the interface boundary between firmware
> > and the kernel.
> 
> I support your viewpoint. But in this current case Linux kernel VMID mapping
> for secure context bank stream IDs is incorrect. As Konrad mentioned in the
> other thread that for secure media streaming use-cases, it rather requires
> proper representation via iommu-map such that appropriate VMID can be mapped.

Yes, I understand this part. I'm basically suggesting that Gunyah should
ignore this SID when programming the actual SMMU (probably like QHEE
did).

> 
> > 
> > I'm fine with the change, but I think we should make sure that Gunyah
> > doesn't break existing device trees.
> 
> Sure, this change isn't breaking any DT ABI but brings compliance to
> usage of stream IDs.

Actually, it does, as you can see from Rob's email. You didn't perform
make dtbs_check while submitting this patch.

-- 
With best wishes
Dmitry

