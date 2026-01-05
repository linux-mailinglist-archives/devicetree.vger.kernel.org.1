Return-Path: <devicetree+bounces-251711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 700BDCF5CD0
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 23:18:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 704DF301DE31
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 22:18:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D60430214B;
	Mon,  5 Jan 2026 22:18:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TBlxLcr1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="h8n4vSvz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F292828507B
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 22:18:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767651532; cv=none; b=PQGrApbRvzJZnd/Di2WKHhvU3BnsIvwXhlbK4lAouIDrC6yp0kX7yP8G75DT84QfNqzFwcC2zZgrkL3fyNm3vmLqJlFH8NXF4JCiduQMsnWi/xT4mp6WImunCK7pLnG5RmFB4//gWOrsa15tUKltPrx7E2cnjH87pG/5gQwD4po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767651532; c=relaxed/simple;
	bh=bEZ9cI5llNSzNN28zJ2MfzuV8jvfc2OUCZHJd0CpY9M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TR+kcwo/ON+P7qUjZswK8SYRQy32FAa7WevR8pXv8gaIIr1sAtLxqhyS7oq9YpBB+9DbDT6veCQkHcW68xGaMYzYqWQ/CUKYaToE/3/3EepKnj4wiNjBspaCFMDW6a+ko4gkAkcVityCzKalJhhDGBoWvHTZphQALR7jGiSgoDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TBlxLcr1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h8n4vSvz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 605KmZ0w2628649
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 22:18:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XN4TwQaswLLYsMuOTZ6APZhe
	pgd/dgKYvyTICrC6T2g=; b=TBlxLcr1/qB8q9u6+03RebdjPh6WFdsWq5I+fR3Z
	Na5vhkB8LIXJjZtA4CU7ILt7j+tHUleO/wNi/xJCwm5fdJY7OgdrGhat4syF4iAC
	MkygNJlHODSkEh8pvfagzKgZS+b7gux3EQblChvgUfQAwW1DWzcTZ+HE7uzZ3LT5
	/LyzE6KlM+reXrbRd0ZQouYjpZ3EiyQuPgv1BXRfFbqmRx8shsn51xDhPkV5zgTJ
	yp7l4SuTlOuG1aiG4CvYLe2scIdCAq2bAjLSxVetZEEqqSiBREbbQijw5eK9vJPq
	6knQRapTkz6COrdQmxysrO3s/EzxuaebQ9Zvhom8fv9WwQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgmnh875u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 22:18:49 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed7591799eso8101001cf.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 14:18:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767651529; x=1768256329; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XN4TwQaswLLYsMuOTZ6APZhepgd/dgKYvyTICrC6T2g=;
        b=h8n4vSvzGAPOUQySQtIh4Y3O12dlbJyRnSWdR7oY6XKvlWCVrMnU56jlpMtdErgiAv
         KIjBhq0ygN1uPoS2+twkJ40GxTI06ToN11xgJQ6kQyIjXGg/YKz2wzESYAeZO8UdjfyU
         hPFJ5r4dLdUox7m4gqQGkphaySQBm/g/UI4DOt7hP32SRAPbYJ3WKzSKCVgGMAzR5tku
         AeW/b2OkSCVhZKR+bqs6+tgSQzN+wYQnXNWIoOF4uOW/uNHd9cb/hsYW2MOaO8/UvsHj
         iZUu1YNGhsiW0syf9n4GL+nlfJ0J2S/4F3CCTsa211V3HW5L8soiJqe1GdegYeCcLVKT
         vI+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767651529; x=1768256329;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XN4TwQaswLLYsMuOTZ6APZhepgd/dgKYvyTICrC6T2g=;
        b=T6Qit12vz/A67dxB9fCw5RKfbntHIFOrViKzi+YfuHBAzD8JKFsygdNhG8HDCmd3xU
         dOfPGJSeEdgJgiPb6DglJZA0Xv4joO3IZj0p56BpG4dAObx+ML5QevX2GyeFAvDmQ5w5
         6qKdREjQ4QacvCgUmvVjGiysa5cS6QmdZPuz7HqcM11e0wFuBcthK0XZhbNRkzgTeM+m
         EoY0ZXcisenN2lKfxxImbXq4Y+becVGPeY9RsSsNncP4AvbdPPDtKMa+NvUQYhtkrls4
         T4Aip9Lb81/G+xgTN8kdVR9EnEC+ctbyZhTgR3BW0JEjUzGnq6nvUxl8pbU2FoEssSdL
         pqmQ==
X-Forwarded-Encrypted: i=1; AJvYcCUk6S0cp5dSi5ewoQalb2z4Sl6KiioYxhmMy71PvoTH+8SlUarVHOe1Cf/S5DnwUmEdcYCPU5NgTSyv@vger.kernel.org
X-Gm-Message-State: AOJu0Yz93oYWmt3hCnItN00VGN3Fc/egGxrkK/3r4KgXMZs7Lw7IwWON
	ezdWOMwpZW/8nrlY7Tm7XnDRaeiZw2//e7gWrdOACdh/yXGyafIbuMZeETCQWf/K5UkbFW6F4BP
	aZdqDdiEV6zNP2T3xNuPoDOoeK6HFoa3D3KxE4RJnJ/D/ChZJMDgeoIrj0Fizm3NV
X-Gm-Gg: AY/fxX5SIDkd1jyNaqe23R2BgnUtB2jb2cKdLk/Ar8PZLQJT6o0w3iqml/J7+1fZSW2
	TUO5KZSAxVbULnXiTlTqg7Xtmm0VzxhNM+SvlFXexRaWM2+VkU44azQwWZtHh6oLBNvJgQipgBo
	uM36fZVtz/plyq1k3323rMfnibneJldIm6JR34SVk8FlCezqxAbtbZB2uVYFOAH265wNVNLX4ix
	c4N3lFVN1gRNR8U08C2GREWJJoAk0eK+8FRRJd3dxgOjCPXbGCE51xbFnzJgba+zI7GrQmBTBHh
	87OUvgxy0KMSrtY9MEE8SCAMbJmUhf8Oshg1gaBqTkgT/zY5TNXNkhBSuDPkdDF7Ck7rN2n9zt+
	Q2TI1i836vhUubnjzFdOAWWCWYnhDJWQxjn1sAudY+cPocBvq46xKzJIJXIeoDzjmuJJogw1/Rr
	rqssSybQk/voensPT4SSlxsjE=
X-Received: by 2002:ac8:5851:0:b0:4ed:67bc:50de with SMTP id d75a77b69052e-4ffa76c9bddmr15046871cf.24.1767651528847;
        Mon, 05 Jan 2026 14:18:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEcT+wUC+rIDoz6E2aqVqPDqbPn5zQVR9A915PiAIRuAbSOVCNgljAKSuMxZS39/mSpPo1/3Q==
X-Received: by 2002:ac8:5851:0:b0:4ed:67bc:50de with SMTP id d75a77b69052e-4ffa76c9bddmr15046571cf.24.1767651528370;
        Mon, 05 Jan 2026 14:18:48 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65cea516sm109662e87.21.2026.01.05.14.18.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 14:18:46 -0800 (PST)
Date: Tue, 6 Jan 2026 00:18:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: kaanapali: Add TSENS and QUPv3
 serial engines
Message-ID: <ulu7nxd7t2p23yjvif7zs5kxo65ixozz53fcus4lnpd6aasbxu@jbgiz55ouuov>
References: <20251225-knp-dts-misc-v2-0-a8a8a31fd528@oss.qualcomm.com>
 <20251225-knp-dts-misc-v2-2-a8a8a31fd528@oss.qualcomm.com>
 <fc67634b-d47e-452b-bbad-35884b75d0b7@oss.qualcomm.com>
 <175e9c72-bde2-4351-a429-7d88d255100c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <175e9c72-bde2-4351-a429-7d88d255100c@oss.qualcomm.com>
X-Proofpoint-GUID: ovDuOMU8frTWBuiY5E-N5OsOyVznDtYa
X-Proofpoint-ORIG-GUID: ovDuOMU8frTWBuiY5E-N5OsOyVznDtYa
X-Authority-Analysis: v=2.4 cv=Vscuwu2n c=1 sm=1 tr=0 ts=695c38c9 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Nq1IhiKLlo-wdsJ7Eh0A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDE5NCBTYWx0ZWRfX01QADsD10PFe
 pw75WaaolVO0SpHxFiKBiZd/u1oK0fmFH6qR381qY/ebFDe5UEXpie+DZCqdDu+M0jFhZ5CZhSx
 +HtYAhEiarHRRTz866082KQcNSSlypPfgmJGCGtM8xr3socTQQrXEb5HZkgYdFf5aAcimHuLbMv
 sEdSfnibPylOvS0o4C2xPXxNSvlbwP3ui0l7GcM7Xfe3FtcYc+AZD4ezlIna3VjNBbIcKckz8mY
 WYuAgAlS5idb9oqWv7Ibcdwy6nUUL842c7TRgZUmCrdMBf0FpvDkRj404pNpIIYwmoGA5Rqn62l
 OPJxk+KGOd331eTIrCUMNggC7n5yaj8uyGnyu0pL4gtckEidNn3FM0RphEoFxkPJE/16VYYmCU8
 sVgGHtcSFJsz8+sj4eshzYC05QA0pnB/5ffUuOG07yoEj747oUil6OHFSvYZ7umlqG3npE/gCyS
 tlfrx+F7WsJj9DtSrKQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 phishscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601050194

On Mon, Jan 05, 2026 at 04:24:19PM +0800, Aiqun(Maria) Yu wrote:
> On 12/29/2025 9:12 PM, Konrad Dybcio wrote:
> > On 12/26/25 4:06 AM, Jingyi Wang wrote:
> >> Add new features on the Kaanapali Platform including:
> >>
> >> - Temperature Sensor (TSENS) and thermal zones
> >> - QUPv3 serial engine protocols with 5 I2C hubs and 24 QUP serial engines
> >>   across 4 QUP wrappers, each with support of GPI DMA engines.
> >>
> >> Co-developed-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> >> Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> >> Co-developed-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> >> Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> >> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> >> ---
> > 
> > Since the base DT is now merged, all subsequent patches are
> > supposed to be patch-sized, i.e. usually scoped for one feature that
> > makes sense. This one happens to be an arbitrary concatenation of two
> > separate ones. Were they separate, the original authors would benefit
> > from the full attribution and they would be easier for us to review
> 
> Hi Konrad,
> 
> Are you suggesting to split this patch into 3 function independent
> patches here?

The main question is, why were three independent patches merged
together? Note, this differs from the initial submittion where there is
_one_ big change "add new platform / new device"

> The current dt series is to ease the maintainers' effort to have an
> organized patch in one series in below manner:
> 1. And the series of the dt change will only have all dependency cleared
> functionality in this series.
> 2. dt maintainer won't have any conflict when apply.
> 3. we will suggest developers can do it's own upload when basic
> dependencies like mm-clock and pmic dependencies are all applied.
> 
> Are you suggesting splitting this patch into three independent
> functional patches here?

No need to repeat the same twice.

-- 
With best wishes
Dmitry

