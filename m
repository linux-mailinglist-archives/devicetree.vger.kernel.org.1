Return-Path: <devicetree+bounces-274395-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHv8K08usmmzJQAAu9opvQ
	(envelope-from <devicetree+bounces-274395-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 04:09:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3CA26CA2E
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 04:09:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1A6903027680
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 03:08:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B1F7383C60;
	Thu, 12 Mar 2026 03:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UxCPI/Ki";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Wf90ObFf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C2335F5E9
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 03:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773284910; cv=none; b=F7PXXgyWz5mu0n66aNQM77Oa8q8xFK6DwAIfzG7F93NpuPBsePg3Q+qIoe9S5JfcDxfRlFLS27vZf/3hLXuGsTCg9q9wDCTlB+q6X00zKJOEaXb+B+xLiGreUm1hyNuAcrww/WI83bk+yUwaY5QL8AVRJusdxX1KXS+sc/k+Xc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773284910; c=relaxed/simple;
	bh=F4nb1kvt2SIMOfaFz95tLq1sQf8AFxVs1Kr/Y0HjwFk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bQYDyhn5/TmgyZXsgHuJqHfU2EsTO+Wy+Qn3hrTdobiYLVWCwahJCVhXkp3LwLGtG3GXQ6BZ5uUmyvFgUhO8HGnkTXCzVR847et2o6u48OJrqeW171IqLMeQJ/xg8iIygHIBX5j9ux5aYQcFkhIgLiry9KlwAIaUVZfW3KIB5EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UxCPI/Ki; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Wf90ObFf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BMPsvO3666960
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 03:08:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TXZR4M6WU8YFQEgGSCbF7Ele
	7XsFuPfmRnNE+Wvn0OA=; b=UxCPI/KiNcIP6uPxxHb1WT3lejZn0tclapRIXSTc
	3LdZxp8utK3lJNbupraO/MlgRVH9mTOjvscATKIgtCs0e0kNdX1uAMGYMOuAvV5/
	M8MW0gHsIOWgRMJf9rqMMGIIeW3OEU3v2AT4M11tZzFl/7lZNViPLtN3rKjJxRDT
	LMLPa/iMTY9VAWPQRn6x1mM9xLa+nYx5aOc7q4GeSkh85g/Zvbs6OfikxwLt/aWY
	3nIyRvPCd4ikoxOsogw8sTbCtZtiaPgc3x0nEe0IHUubw9oitWNCNEo6BcagfVwg
	EO0xh/0Y5kIUWEruu+IJo8Ga8irw1Izx6byVGYH5ajZ+KA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh60gqn2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 03:08:28 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-899f474fae1so145117936d6.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 20:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773284907; x=1773889707; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TXZR4M6WU8YFQEgGSCbF7Ele7XsFuPfmRnNE+Wvn0OA=;
        b=Wf90ObFfBHfw96DcQdw9bB6xzZd+wR+tGR/+engSWYL921tEoTLg4r1fYi6FcK5RLK
         qLyZdaanoseflONuA2k79x0ErqNNK8bLHPBKp6nhW8JStoUytt9tKJezhzSNc8fg9nG0
         U1bqithdlOmmxlkePN6ZxALBeN3N/eVryUNTNdxgFIwMZeHwCh1RPiKQf2mk5vVMP4N2
         /3eC5OBwTuOW/xX4IuPAylxZnq0lVMnTponAcACluTG64DdNJwAxCOcjN65kxiEWOxXU
         HFx1deEUER9/Inj+KdrI4SrugbqHYoD/JTpOGsemYr8cb97ZDQUsXcsPZjU/n+OUNR42
         N48Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773284907; x=1773889707;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TXZR4M6WU8YFQEgGSCbF7Ele7XsFuPfmRnNE+Wvn0OA=;
        b=SFNx/tLyMCni3PMFyrTpD3VruqX0MfHZfwI5xI6FxDuRT3L9oU7foxKDTi5Gicezr6
         s6zB4zaS2wCa1nhhOw8kE+JPSgQHP/xkVd21N7wsgNCQh8G33H2OzLUFCUn0/V9mUhjD
         dsjx/nAOm5n54eU+QCQ/9n38L5AYhhZ3Hl3sC9HA6YQL0f3qpeSDYf9wxw0OykVg7Ui5
         6nppkHUYe86YWimF+pQ0flFjs/5O+w82Bhh5DXc0hYW8b1uKI2PMmjS/tNlQXJyqp0Tb
         StZYZ+j+TXnS+gJiPVM39DGr12soZS60KEDh+9c5k/hERm8YNtGS1d4UEgr2Okx6TDHA
         8nUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUWdufcqE3R0Bfm88u1VXl8kubvss0yv01JPpSmbSrPMxDGlYJS7njR1bkOR2Lysj8BymdsGy2jPLO1@vger.kernel.org
X-Gm-Message-State: AOJu0YwUtIfwDjzkqNbAm9PLPRE/CSTiOmS/ADBGP2wsk6J2VPwNdb3f
	zPAe00oMoZviCECH2iXTryIrGTVZi1WcARkE5BCENUWes6MWgQFzqSuqaEBwLx/lxuyVAJU2R+L
	tskftQPIB2icKW0Ky5amjpZLRmSgrDOZLFn7WTl0HD7PbT3VH36heblAN/FlYXgbb
X-Gm-Gg: ATEYQzzQiRf1yzleU6x3hCCNJFUvlMmLeOp47tnv5N+Ewf42Dini0HOygL30M8Nll0I
	LjbnkeAH6wa2tPxQtmGp9E1DHPVStn8ESvdnk4/VjIqAxOI3eqZebF5md3T7uzVunLTr2Lva2oA
	jjQMrcBln6BtjIOXiu5IYQZd1L8ccVeBSYzftbKx6otYu1gopwKgqdPrSPWI7WMhyCN56MPD0dQ
	pPCcQzIt+7AB6uc9aJzuG4OlqjkN/TpCxwKM152eHiU/UdvvEpDJWWTfw7EWWogRHHzAUxP7flk
	2P5iBF4O7Ykh0xAtrrHcyg0XLt8Ui0GNkRqEiS/ye6aehdhixj+vyPnQYYVXHFKgPYIf9EEoX6Y
	9IgTx0jG8r5+EBfOaMnxGYuYLLYmBeFbwCUyJm1OUpVJOJ+SJyRYD0Nl9puz3padlGUCxgtFSZQ
	ioeaEgfW4/JDc4DKiOd3e5DJ4U2bQ1rmOZHVU=
X-Received: by 2002:a05:620a:4514:b0:8cd:9300:c864 with SMTP id af79cd13be357-8cdaa88a14amr252151685a.35.1773284907509;
        Wed, 11 Mar 2026 20:08:27 -0700 (PDT)
X-Received: by 2002:a05:620a:4514:b0:8cd:9300:c864 with SMTP id af79cd13be357-8cdaa88a14amr252149285a.35.1773284907090;
        Wed, 11 Mar 2026 20:08:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15602e7d9sm696474e87.35.2026.03.11.20.08.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 20:08:26 -0700 (PDT)
Date: Thu, 12 Mar 2026 05:08:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: Add second TC9563 PCIe switch node for
 PCIe1
Message-ID: <jgr543ldiwhh6z2bmpyhmn4q7h5wyzol22ofvnusvsgxo7fvto@tgqgb4knvevj>
References: <20260305-industrial-mezzanine-pcie-v4-0-1f2c9d1344d7@oss.qualcomm.com>
 <20260305-industrial-mezzanine-pcie-v4-2-1f2c9d1344d7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260305-industrial-mezzanine-pcie-v4-2-1f2c9d1344d7@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 8AR4xRtFp3zAN6xsQBhiMmgLhA2gkKdT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDAyMSBTYWx0ZWRfX+WSEJZIhELq8
 jPRqQ6dIuFchwWI+bceefR0qNRVE4g6mzwPNZp1xsymcsp7A9dor3IoK5BmCs/pFPebpBhScxmZ
 8AJvk9DNgBYdwNSV4BIbdzYymnuLrN92P5/EFAMjoGDlkNwStYOsc1BDTS7mMiZUe3JeB6S2Z9d
 +ZxWjHI8Hr+d4+NwzIyA8fh7QaIGyyimi+RUZ4dGdF8nHPRatMsQ299rzreNkcpooTSc/edvxv0
 MS+BD95+18QkMs0V9ar0+waakfxh4IT1pgPDEBo+ntyhWOgd0gZeLEHUVx6/za5O+MtyOUFO04J
 waIhWEVuN8uNTLqvuPfmVm5qb2c+ZU6fN2fOKerjBWYRBwfInk/FcOl8TK+BvJCyCXWEN7wpdpd
 VX5Mw2/MVn99JrZ+UR8+6DWEvMy6vsASHicDkZ+AFxsGEn/q5ueJppCOEsSz2p2cITjjbu3LSaf
 LHn54N0yKWmoNk7bjBQ==
X-Authority-Analysis: v=2.4 cv=DsRbOW/+ c=1 sm=1 tr=0 ts=69b22e2c cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=4YHYcllqtR1fZAE5NfoA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: 8AR4xRtFp3zAN6xsQBhiMmgLhA2gkKdT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 suspectscore=0 adultscore=0
 clxscore=1015 bulkscore=0 spamscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120021
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274395-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1F3CA26CA2E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 05, 2026 at 07:09:32PM +0530, Sushrut Shree Trivedi wrote:
> Add a node for the second TC9563 PCIe switch on PCIe1, which is connected
> in cascade to the first TC9563 switch via the former's downstream port.
> 
> Two embedded Ethernet devices are present on one of the downstream
> ports of this second switch as well. All the ports present in the
> node represent the downstream ports and embedded endpoints.
> 
> The second TC9563 is powered up via the same LDO regulators as the first
> one, and these can be controlled via two GPIOs, which are already present
> as fixed regulators. This TC9563 can also be configured through I2C.
> 
> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  .../qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso | 102 +++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts       |   2 +-
>  2 files changed, 103 insertions(+), 1 deletion(-)
> 

This might need to be fixed by squashing [1] in.

[1] https://lore.kernel.org/linux-arm-msm/20260311070408.2287889-1-hangtian.zhu@oss.qualcomm.com/

-- 
With best wishes
Dmitry

