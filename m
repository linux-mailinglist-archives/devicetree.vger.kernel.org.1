Return-Path: <devicetree+bounces-249266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1560ACDA526
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 20:12:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 943DF302BD12
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 19:12:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9D77346AFF;
	Tue, 23 Dec 2025 19:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mKl1shyM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HLGIQVec"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3962FF657
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766517147; cv=none; b=pKU4F0igS5m6jf5tB/b61bhDD18pFzN+dQY89fIizVwIxwMUSr+DbkKJL40EdG+EmRKujPJRlYJJJ8EmbVY1bGp4jfpyZRhsXQ4LWGyLeSuKW6DBkL5RU0U2hJQwGDOKIsEVPe4w0lQjjWweJyAcDxRZ0jEeV7DgwTXQ/4SS9T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766517147; c=relaxed/simple;
	bh=bZX0XoFiCIhw/6dEwBaf7SgHqJw7tyTXutyRj4rDLnU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mCi3TmtTaEpDmvis105qzgvx3RHsjKO65n9+g0OQTAmB+5MQlRGHuhh47SS8QaDZgnj+pSEYCXP0cfS9xKO5E9z/KtvPy3eZpRVRT2EtgWudV7DZCMflhnbWlZ3u9hVprNQBNtBfz7k9FYpdFWxCmjJ86ZUh5Qf9+8V9/uawHkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mKl1shyM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HLGIQVec; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNEsBbb462214
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:12:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tafZgooi9zt+RuExecwY3YY9
	zhJhue98JOLnup+dcp8=; b=mKl1shyMFSdhVSCt1+Q9KbZXTx5EjiYJYjVSmryD
	TkT9fYJs9A8lFbdd0tPAzSUhijLKpKuFbZYwnslD/Rlf4Y9HZfl1HuA8GFdR+BCo
	AzTuX1UpsDRljax4IBTSY8KOoaQL0cfeqF7H2LDwPGzB2DLs8FWuFJrX+wHENfrp
	IadhjaYOZtEEe0iXwQ2/C1R2e7FGTbCqfEZdOufvJU647kiITlgDjheEwaFw1fzi
	zGKUe0MkAMQ2O6ZyVjDNCaX4dOcnZIjBzRJBtgJLSG8ihI7H08K7nfWIQEa5ZMHH
	mZlJIvbLtQPt3ebGYAvp9bcy3bjePEpcqG6PVbLRwUkMTw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7w8frscn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 19:12:25 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4edad69b4e8so111408851cf.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 11:12:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766517144; x=1767121944; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tafZgooi9zt+RuExecwY3YY9zhJhue98JOLnup+dcp8=;
        b=HLGIQVecvHqqlxEZQazQ9yiJA1F83rOGOrfudpR4e/7+GK9iBktloLXG/zbI18zkZY
         YZfO12tVV4XbYSXuCPmEFYhwqZ/n0JLcI1zUVeaj8tiiCjTNbYKUe3vqV7kaiWZ2v9nQ
         M6JqeYHZ9jjglla0aHLX8wytaDKOLf2OpFc1Jcs8+vkHifYM6NQIC4w3R+Q3EYz8m23Z
         F/buZtzX3q78v1j4hv1gsaAIlCTW9tILRc3l0W+jQswBFJesTJenRqyKTaVUXFN6ZyDd
         7KRcc4BOEZ26D0orcwrXSPSZ4+vClh6NC2bX5ng74ryYTKu7r0+h706OOCrCvlPiUZUE
         USjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766517144; x=1767121944;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tafZgooi9zt+RuExecwY3YY9zhJhue98JOLnup+dcp8=;
        b=Yrf3vsLxbOMV8Oh4R/x505UqqvqmYkMF3W5ycH8yI0dl7C2hluygUFUOaEeKyfeu9y
         UaxdmvA5BU8A67L4GkelToVtM7AoYf/3cwRIfbhyTOWvSK6z4lMWyNYycA2nAepLAp7G
         CAMOJholfvb0v9IEna0kEqI9EIXo2Wi44d5IGiY/BecnWBkamiORZceodSB5j+sPRwHF
         rdBnakYzAB5t+OFYtxHTTtSSUMJJq7cPvtvvpdnvZByfRqbitBF2iQ+0KuOmjUlcERPh
         +uTJVg5HA8n+mpMzUqrDc7mC30iSBf8/xB5vUePv2b72yaPPpgOpyorijYeKVzYSEqZI
         VK5g==
X-Forwarded-Encrypted: i=1; AJvYcCUb+e8eL0Uq5hno6yJhahlpU8e/ElBPEXieXt2T+l72gxUnrNXB9aVja55Xs8UfgNOIT6LIyt9jLJrR@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9VqdyIpR/FlenlFUWVEsnLLxpIda4PjIQxaGaSD3lycPEzzRW
	u3tcjBihCX0s0FPDvgE6+8CCT2lAqBuVi2HbDACXIvXT8Az7tkoi+Akt6eupuZnW85cwS3HPrN6
	BHQvVSwIwgjWiI91D1Z8uK1QZJDM/tHSN43iptAneYX23VwMg/Xr90hXVqIGaySeliuvPyDqx
X-Gm-Gg: AY/fxX7SmgNvkiVs1j0zyD+4QxHc7cg/NTNCihHDS37flgoE5gPy45hWExqeNMQVoZk
	UNH+s1OV79yLsX+lsgarxkeaSdTSkzPNEt+p+jcAraRmUUsAvzgTq5jWcIeOMKc2QHvFjCldn/N
	bPIGXz0sPUQHam8AqoOjU5X9ivV80n5pt27Ll7pStoiBJzseMTe6kexgua5GCgwPUHKxvprSLVd
	04nrveRUcUvH0f7G9wavmTBQ/v5zx7LwccyYoCgAxfg0d18ohSZ/XcwDlu6QDkoSIJ3AFnJoW5k
	3Va5oXmhKwHS2b5fXYFwpcQufMhvazKih2p0D7xL8s/2f49WNVOKZLma8CLPl1FNgtIRN19eh/6
	cnTYHuGpIvpvLS3o8z/A2otQQNRqzG0WFGvbGIBkTb9k91DqR1NTJfMU0hA5BuCOXGSp89fREi1
	PpM8EwIs6jd87NlERoqIeZP5I=
X-Received: by 2002:ac8:5f8c:0:b0:4ee:bac:e3aa with SMTP id d75a77b69052e-4f35f46d1ddmr287436011cf.35.1766517144347;
        Tue, 23 Dec 2025 11:12:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHMinXdBpWZykl8cRjWBvUJpxn7zGoS1zWOKWQ0k20+h6Nxib0wnEmEePBMz1Q19+LfDkxUCQ==
X-Received: by 2002:ac8:5f8c:0:b0:4ee:bac:e3aa with SMTP id d75a77b69052e-4f35f46d1ddmr287435621cf.35.1766517143892;
        Tue, 23 Dec 2025 11:12:23 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a1861f326sm4283973e87.70.2025.12.23.11.12.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 11:12:21 -0800 (PST)
Date: Tue, 23 Dec 2025 21:12:20 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: qcom: Minor whitespace cleanup
Message-ID: <w7uiuqulljljd25rb6idcs5wyxbjaimm4ykbihqu6vsjxr3q2x@ez62ctwqxlhd>
References: <20251223152559.155703-4-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251223152559.155703-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Proofpoint-GUID: k2GLz1W9pFlj7s99OxtYzQVx5F9FOBA0
X-Proofpoint-ORIG-GUID: k2GLz1W9pFlj7s99OxtYzQVx5F9FOBA0
X-Authority-Analysis: v=2.4 cv=QutTHFyd c=1 sm=1 tr=0 ts=694ae999 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=FLYuuQH4aP3MUV2sBEwA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE2MCBTYWx0ZWRfX5jmSLUOFM97V
 1Wt2gPqQSdkLFnUjU/7mv6dMiQhGGL4hoXrMXk3tloEOC+6oOiIyq+sqYjB33hvg8tIVEWWdTrV
 OGZdLbUI0WQTA4RxfTAjqihvNwEH5p+kqqpzUzoVjbDIh6pC9MTMYtFfsjykn0O1HMHuw8NxiJz
 MJC1OqhvW6jOwdZXU1TqQvGKl+vQZd12ZOPxJ12ZBgiDZI2K2nwpWM2+mZkD61HDlk6oT6dlUHH
 +93JDHso+32RQ0pZDLdoe4s/tw+4HdyDprgLZeMXtP18JFKN1lhZzVyBCXs422jbSWkKFBMzWaR
 KpeGgpL2Orun1KSC5xv5WVFpeD8VqmS/cYrd4avEJ2PS+OUBf+tQBo2ADpxj4tOJgxWee2Gb1RG
 InzPV0K1GXEeM0cFfAOzFnzQe/hadoWqj7EvTwDymsG/rjmQUzcXd4xLdHBXwqZfydTJ3lDjUr9
 EuTHiuGOAI8iSu+U46w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 bulkscore=0 impostorscore=0 spamscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512230160

On Tue, Dec 23, 2025 at 04:26:00PM +0100, Krzysztof Kozlowski wrote:
> The DTS code coding style expects exactly one space around '=' and
> before '{' characters.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> Patches done with sed, verified with comparing unflattened DTB and
> dtx_diff.
> ---
>  arch/arm64/boot/dts/qcom/kaanapali.dtsi | 226 ++++++++++++------------
>  arch/arm64/boot/dts/qcom/lemans.dtsi    |   2 +-
>  2 files changed, 114 insertions(+), 114 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

