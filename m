Return-Path: <devicetree+bounces-239745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACD4C68F52
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 12:01:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 4D1E12ADC3
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 11:01:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9711C331A7D;
	Tue, 18 Nov 2025 11:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mPnIcjKT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aLnbnOpP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A1333BBBB
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 11:01:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763463688; cv=none; b=CS2mMpoJe7H9BMb6JryqXimNhP+4Cc+0DdxfnpeZ9OdPm+eySgTAwG7pP1fhq7ZuGlVMMBRfV5IHtHggaVpqkX8M0FEtmNojMTAzIyWiBkSNacfttFXRAfUzTo0VJGsqDUdnU21bU3FkEAXX7xEgcZDTAmK4GeSr/vj5gz/96yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763463688; c=relaxed/simple;
	bh=54svb4AmhPadV6Nu6fX2X0ciXJedoyOJOZZv6uYmFzM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e0fJc9VhHMnKrAi73hSbalj2mSA9cd+Mv61uwu4KUw2EwByWHP15vUsih3OLhOsTIuS+Flf+92lUQrahdlDc/8J64hHeT8Zyy58H7VJSYpB9Z3hdxV7Pomck+jtKMsvDyvWIet2KnHSshUiwVHepJKd+QGkyEJXN/jqDFfvxsDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mPnIcjKT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aLnbnOpP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI9RlrZ4168202
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 11:01:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=X5A+uS0p4cMw7kHI/Bw6vhoV
	gkI4mhoIsS2O6NL3PNI=; b=mPnIcjKTg+tFx1VoZkGPUSFYkKaHcdI0fZtZm5QF
	DRQdodX9ZnrQdy+It05NTc2HR3Vo4G0QQTxRhijVFqNIia4j97vINpNMCLQx2j6u
	EuV3EXJWGfwrv6ljlu3U4FQaE2Yh021gQQlCzvBo/vNyghZ95iu5c501pI+xEYt7
	2WIWcyiEzl8bgG2DaNLTZK6Iz/ACfKq8MBfgFJQPs+zrht/bJ6RI9y6GF5KcVSTv
	oKyDtxqiUDB/sgLzdXLk3sWIAhgWIleQE4ezI3TSJZjBQPcw5LIAcmrVI3ZGVVwg
	L1NnfRHpi7UWAfv0ZdEOTyZcdmhcrsDkfB8bCOZVxyRYew==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag593u8k1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 11:01:26 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-882380bead6so154456226d6.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 03:01:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763463685; x=1764068485; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=X5A+uS0p4cMw7kHI/Bw6vhoVgkI4mhoIsS2O6NL3PNI=;
        b=aLnbnOpPCfEBb+auq0uY1Ev70PCPkHiDv1AMAleWOdaoYbVYKaP5CYTKQtqmg10vli
         rhPtMBREsB5m0Wpyogwpa4qX0FkhL4UPrhzSP6zEHJccJdJ9Q0Nh76JYKgm9m633Okox
         4e3xUf3u0moD/ybVi/dG8Z/JuLiW4AwHrgULgC5IbwSX1EQqZCdHiLLHQo/YxVJQuw5C
         QllHPfo902Z/rhYjdG27ym3wyORvd5FBGGMRybUmvR6vyY5FN5cBC3BkcI1yAQA3ypXo
         yQRjkq8MzS+jy0QQe/mU/jKHIC+q16EBqAHPzCPGA9CVT7+dPaBMkddGnHF+6jiMwt/K
         7qjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763463685; x=1764068485;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X5A+uS0p4cMw7kHI/Bw6vhoVgkI4mhoIsS2O6NL3PNI=;
        b=JpHJBOCvGhvKD2GWDRUWeoe9uAjtYsbX2quVfl3MYyKZRCeqdoW62esL8x9/pfZnAF
         Buz+AmYdKq0/dJo0Kj95VGZXVHMhDtgA/ccVl43LDFgm1/y9u55/pU4HASFIVUwtOi3J
         4SkvUZKdNe21sG/P3uDob6IEa+iNA6mGgdKak3KiRW9uOPAyWAn7fPkof233fjMFuTEW
         5LFN3dkwtwRaaMyWyAGxBcy9QxpEQuyUZGInLBBF6C0po96hFd18SjPPPkFxoyk+0KA4
         li6pEe265WihPeI/l6lMJtR/s7nbuAlwp9U9bVTk+5TPDmghtnEKD6/dJicR9lrubPiH
         38Eg==
X-Forwarded-Encrypted: i=1; AJvYcCWojDBs/zc1CZG4d54wLtDenPyxL5BRvPokDq1qv+7S8hu/8LL8JKCQEhWmL/K9lkiqgmAANzZhfddL@vger.kernel.org
X-Gm-Message-State: AOJu0YxSTDxyFUYpVaUimxvbVf8tP4xbHZVlKO4IhFSWODkFAAmPtRbb
	ZGPB85rJ0Bwk9FYePm6joPByPe+Du9ELbgCgDt1jUz+jvhd+QGreqVdgUm1NrHbkDOE88Edzetu
	U53iDC5j5TUc5Oj5xTiKGwuf29vvb3MFy2P33wDuLbsNN+Kuxr1Y/3ja09BBEBAQZ
X-Gm-Gg: ASbGncs7NtWDYNP/6NutVqgMm0xba8I1VME94se+aeqofM+xl06dmn3dz9NSWn8lRiv
	6tSyLV5PbzlpB24hezkj9kTlPJMf3eB4Zqx8w0sGPMWv2eowRLBwKUc3zXLfWJggjRz9DE963nr
	HLATsUIa8om6GqLGBaTZHRiEeX6YdlGnqn+ESGVdFfuUUqq5fDjQHznHfu/PhdVUAeqRWqfu4H6
	8+7yc+L5SVXW6rsYx8pU4J//K+ViSC4MAQQbajjl3gI5fEcdBH0RR06xiG42Oju69RkxwnfjguI
	qtTu1QFOSo+5H0bmxMNrfgTYY2xA3CYRU8Bv6WWrpxVmAct57URqOdryvhxzIubd2DaF+WSdhPN
	cQkwonOH0YY7BBO8zDLd/9oWDbJoTTfOPKZ0rtfSuZKnW0CZCsf9hOfhf3h091LlOpyiE6qx72c
	czPKKlWjtup7gp
X-Received: by 2002:ad4:5ce9:0:b0:880:6263:fe5a with SMTP id 6a1803df08f44-8829258efe2mr207729406d6.6.1763463685073;
        Tue, 18 Nov 2025 03:01:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHKXukumLWLvwPRs27cFz4PFyKqeVII2Q73c+Oev/tcaH1R+RpNBh4GhkGkdN78aU9ajBkQ+A==
X-Received: by 2002:ad4:5ce9:0:b0:880:6263:fe5a with SMTP id 6a1803df08f44-8829258efe2mr207728706d6.6.1763463684439;
        Tue, 18 Nov 2025 03:01:24 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595803b310asm3874340e87.30.2025.11.18.03.01.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 03:01:23 -0800 (PST)
Date: Tue, 18 Nov 2025 13:01:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 5/5] clk: qcom: videocc-sm8750: Add video clock
 controller driver for SM8750
Message-ID: <x6x6m6uiupqa47nj56cq7f5bmcy3kzrgb5otykgqmjsukzjsm4@krgjaxo6ui2l>
References: <20251118-sm8750-videocc-v2-v4-0-049882a70c9f@oss.qualcomm.com>
 <20251118-sm8750-videocc-v2-v4-5-049882a70c9f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251118-sm8750-videocc-v2-v4-5-049882a70c9f@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=AKSYvs3t c=1 sm=1 tr=0 ts=691c5206 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=d7ClhsmVZ3m4v3ji_18A:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA4OCBTYWx0ZWRfX6wMon0ZpvXwx
 7Xd355xWa74iUagwWWSG8u2vkm1cVDlz9+ZKzvFW2M5p+FU72+Z7mRB9o/0Bqv/U835kVKINuVp
 mWjG6Hkdx18RuefGpF3Z8Xt6YFMkrOI2Raiuu5J0mF9KSoT2ftspDu9MXq3c5HGVDpRVZucRNNh
 L/12K0ZuNe9h4as95GuXemDjo38kjS9bcnfFn8KenN4dNrJuFWwOnOkTrX4PW6Funk97CdL+L7z
 KA03s5QJiXmhooVwWOigbKYFscOWRzIEUNEWCGhUGkQo7QUTio328ABUfQ4Db1DpniDTCyDjQ0F
 D+aQkkjLfYiFfBG6n7KGdUjoCmfDETC5WHbEOq2e8ltwNRSqESCY2tQYxTSLinapGXodTz+Mss2
 CZjLZyvN9J1P0+SauvWrASHqs7k8pw==
X-Proofpoint-ORIG-GUID: 8MXbkgig3KIEHoMG8C1t6Nft5j1_If83
X-Proofpoint-GUID: 8MXbkgig3KIEHoMG8C1t6Nft5j1_If83
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 bulkscore=0 spamscore=0 adultscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180088

On Tue, Nov 18, 2025 at 12:47:09PM +0530, Taniya Das wrote:
> Add support for the video clock controller for video clients to be able
> to request for videocc clocks on SM8750 platform.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig          |  11 +
>  drivers/clk/qcom/Makefile         |   1 +
>  drivers/clk/qcom/videocc-sm8750.c | 463 ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 475 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

