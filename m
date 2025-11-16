Return-Path: <devicetree+bounces-239078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B092C6139D
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 12:39:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 99154351456
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 11:39:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E68A2BE04C;
	Sun, 16 Nov 2025 11:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MorxaGdu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Hp3OBCRE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 774E423ABA7
	for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 11:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763293137; cv=none; b=lGn7j4DXSqPNMF8stTn5yX3PbgYyymo2A5O7bKmQdAPCSmdHnX6MIlPty4/ZxnPD+jjx4SlXkMOfxUaUCFupTFmCbMHOPXv6MBODbDz9NNHmHko2CqBMG6xqsbzLqF7hBMUifUq5Jx4MrS8zc+qbX7X4NznmILlje8sg2/WgB/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763293137; c=relaxed/simple;
	bh=UZkZxW6oDJLp+w4C8bfan78Ipn16wj0YBwH8H8f1BLs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VlwJgjcb/Gh6vprzE+V9169tSrRzVVoBNCqAGX25+dVINBbHgcRTwDgBR2E+byPgmWIjdd4Mnifa6s5RyToGeQnRBIJZiNKy9wN7SedC5VQKbkGsQl9W2Il8peGVQUFIqXVF+ywxtkvnonAmn2buH4rAOvKwPedAKyow6H2YrdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MorxaGdu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Hp3OBCRE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AG7C8pN259013
	for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 11:38:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gpMNilTiqKZvFerSznNOMiBk
	SRtg39dU1DzYkv9O/M8=; b=MorxaGduOY0TCy9sMgYn8YWDPVfCfyM3zsQnT0cX
	0h3hgtsxLQv0r0zLfLPOlWKSqvsoh+9u523i+0GWKT47EjggrN7c13PKq42cnS41
	c2I1HXJHXa+gQOOSE1oh6tiB3jOCpa2fxMW/VFCM0+ZSH1lpN67GMDBmZgbCrsvM
	jVie0+7KSYAQUdfBDN/1MDrrrf0q52w00htKo3fx8JKJfFp7wKhHdFI127oomGMs
	jtzv66WCzI2MIViOXVNrQYZatxOZskQY2LuYr3KBQrlRjNZftN/dwkX4Lcw9mtVd
	Eo1Hsn+jtSHL3GLgwRiy54AvJZX/KIKXIqel66pGDeqmeQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aejh0a1ff-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 11:38:54 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee0193a239so12757061cf.0
        for <devicetree@vger.kernel.org>; Sun, 16 Nov 2025 03:38:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763293134; x=1763897934; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gpMNilTiqKZvFerSznNOMiBkSRtg39dU1DzYkv9O/M8=;
        b=Hp3OBCRELAUHCrC9f4cz3tTN61kmyxBdHmn7uDM7NbFY2f5cMZJ6s28PqmPRghmmkL
         4SAHShIn2/QSSbvtAJPPWGxIWj5rYIx7DhAazXme1cymuy4GIDgKPSsZHcd83FakrGVp
         t7J3JRvvPjG/OPPFp3TfAAs7zSOg+jSJqcimpSxREQlpGgc3L8vRURRIX72wLI96qGb8
         vnS3SvG3YP3p/jsXaLKWTE9IDOX0jaE+8EB5mdpUQwUWRvUma1oz1TfF0nHK6YKcPtOq
         UnX6HP5lnWfCeSFio9L3WR1gVUd30CWwVbyAmT1zEDOrVVRKGLKKTRuMruIlhh+UdZWB
         3nNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763293134; x=1763897934;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gpMNilTiqKZvFerSznNOMiBkSRtg39dU1DzYkv9O/M8=;
        b=ZMqqWBR5Mq6kKkJJE+Y2kZezpGyfiC2F3fOt0EFtbNCf5KqAZXvIrLGit8lob1YLHm
         dH++2eKsIQi77O+mqFMW/YunLIhZG4p3TiyuSA7nlIDtKT6U0mOlvoAWMsqPMfqUCffl
         NnT5TROW69emmPy5r/H9kFwClmXEt4DE6UOLl4M+/oP8PLPhqtuOH+qw4CgNzFuztlb6
         n+VmjUJSD5lCBWTpxMHTjliXaT5VlqhyO1NEpq2lJ01EOx/kaCZjuQXGM03o8w5DV5xZ
         HaZHRJp5uFwG0DM5Pjvf/7fr6Y/j3BaFEJvSJiaObktw3gPh654aGxCxGykUqcxbQofq
         mLzQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUkiYcW/aENVijzQ01ue7os6LiUh5mYkh2X+TpssInuWHpYh26UTOp90jLzXK4oSSq21x5p+wJmNSa@vger.kernel.org
X-Gm-Message-State: AOJu0YwxBW4XrmcRGQOeilPBiiStouGokv7rjPsJwn6TXfGjvMG6HIfZ
	BNmYC78i7IX+lhd2ecj0Pf9vAn0M3ASImR9DUWOBHxGjRZ2lREPdM6P/KTGW6poyG/BQPGbC2jk
	DnbA6L5AbGJo9ob9mIYHPcNiA7g9BNozgIxEAmwnQXKVpuAX7Xb77Lr6D4enso/u+
X-Gm-Gg: ASbGnctx4CuZfpVDWPNpJbOVOjQ4alEcUBKPbxMqbRSJvreU35lEt7LfV7EFLOo7kO+
	ymhR+Rh0y9i3hBr3uH9HhUqC1t8iZU/U07amySGAkCjRZ8dwSUWt/B8Gfq4IJAx7PECbWjMnttp
	OZjHS1e/1vlqHLCSZR1zHUIK9v2JuWnzuObjEPGfZqGrR4r0mkrbOErfuIAAtZ96TVNaq3YnCXC
	SnZ88ypUL8OayMI++NMrbqtrnGf3u6c5U6xWGuQyPfdJtUl4HfpuwFDAa2g8oCFCXvbd4CGyloT
	Ua10OV4urO2PQOkcxuOCEXRy9BaRe3M2TlSZzYQkBPlq/ehhzeIxzePz1DyWq2S5JkhsiIR07NG
	OZJynWFmoG5bEqFMLPKKFQu5mt+6wzIOc4v+s8+i1lEo+oYCqt8N/Um5G/dIu9kJ7154ztNhYM9
	wS7W/ceWk5l4f2
X-Received: by 2002:ac8:5c90:0:b0:4ee:1365:ba71 with SMTP id d75a77b69052e-4ee1365bf2emr37920351cf.9.1763293133620;
        Sun, 16 Nov 2025 03:38:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE0+9gZPhHgtYyt7zLD6HaVCVgBxPCKeg233JhdH4Sb2vjhtKBMn9il8vin0Sn3yAQM/ExGHA==
X-Received: by 2002:ac8:5c90:0:b0:4ee:1365:ba71 with SMTP id d75a77b69052e-4ee1365bf2emr37920121cf.9.1763293133096;
        Sun, 16 Nov 2025 03:38:53 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595804057b0sm2301873e87.85.2025.11.16.03.38.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Nov 2025 03:38:51 -0800 (PST)
Date: Sun, 16 Nov 2025 13:38:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Alexey Minnekhanov <alexeymin@postmarketos.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v2 2/3] clk: qcom: mmcc-sdm660: Add missing MDSS reset
Message-ID: <iqljxclxt63ncwllj4n34inffb2bn7qidlj3tlupfeqo3ltbob@mfaf6nbtvevr>
References: <20251116-sdm660-mdss-reset-v2-0-6219bec0a97f@postmarketos.org>
 <20251116-sdm660-mdss-reset-v2-2-6219bec0a97f@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251116-sdm660-mdss-reset-v2-2-6219bec0a97f@postmarketos.org>
X-Proofpoint-ORIG-GUID: u2SQyPc7-oKedYPOrnSpN5z8QB7IViSS
X-Authority-Analysis: v=2.4 cv=A8lh/qWG c=1 sm=1 tr=0 ts=6919b7ce cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=Gbw9aFdXAAAA:8 a=EUspDBNiAAAA:8 a=10pTUH41BiadPyba3gEA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-GUID: u2SQyPc7-oKedYPOrnSpN5z8QB7IViSS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE2MDA5NyBTYWx0ZWRfX6v5+i/tvDSCJ
 r9ldAqEx18Bk6SPBZ3yAAzm4N03Es4zqoCXi79nlWRUNXkk+rA9Yp1Mbozm8JiNQEJAVTEtiU4M
 dgnWSvy27QtRwUcblwW7gxxuRBw+8iKX0x/9irph5ZiLHUDcPvSpPD0ts0r/qN89n55bXPa1hpf
 +IZFIbPeXiy2MlAEDc4ZVx+R3jyxpPIA64+V2HYT7dzLrdszk5t9as9CLJRmXgO1ZhDCFn1794u
 Dr5AHurVGZcrSEmmXpfwDd6e3Vyn/8DZXxCChfaddrMinChISQcGvfzKTLHTBzwjcN/OARRqSRE
 4fezf2mLK4SS/oQAHrhJ4Ju+hy5i7T00w8Asp5C7vxQEV0rhQUqUyeBwiJNK1WLZzZ2zZ2NhPui
 GD6y4wlSXeu/BKBSZHPuHXEojurvIQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-16_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511160097

On Sun, Nov 16, 2025 at 04:12:34AM +0300, Alexey Minnekhanov wrote:
> Add offset for display subsystem reset in multimedia clock controller
> block, which is necessary to reset display when there is some
> configuration in display controller left by previous stock (Android)
> bootloader to provide continuous splash functionaluty.
> 
> Before 6.17 power domains were turned off for long enough to clear
> registers, now this is not the case and a proper reset is needed to
> have functioning display.
> 
> Fixes: 0e789b491ba0 ("pmdomain: core: Leave powered-on genpds on until sync_state")
> Cc: <stable@vger.kernel.org> # 6.17
> Signed-off-by: Alexey Minnekhanov <alexeymin@postmarketos.org>
> ---
>  drivers/clk/qcom/mmcc-sdm660.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

