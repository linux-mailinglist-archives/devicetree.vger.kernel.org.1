Return-Path: <devicetree+bounces-226146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF44BD50EA
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 18:31:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 51E343510D3
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 16:31:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 816642749D7;
	Mon, 13 Oct 2025 16:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Px9nbS/p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED8F221F20
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 16:31:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760373106; cv=none; b=W+qHhrqU4fgUTvD9ttTJHJACoOiQKLyngZXpclV1yOs+g7fFfkBaTecyBcNUIyLt0VaYqU1x2jax5DKR7MFuHpfdPheGxDtIm5eG5pFqxaNjx+PWx8aYc15MF22C55LONnqlfjQuDzedfwum5rG58DFWdbj92rBFdq4HilZeVNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760373106; c=relaxed/simple;
	bh=kurJp8JCs3541IcWv9yKM97FEyktgGNpVUnrbeMqMmY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T8WXDeyc106N9lS0Uiqs/2pbvGkd9TCntTYOBo0n8RKkl36IUadaVf69Obo5f4F3JtLfGib/wFKE2K0+v9/IcNAQHCg6DXoLx1OI6/R8mbTTh5ZNm+Ubn4I6EMLFozv4CRL6FaR8vcXR62XJJUiEqmm/y/jSCo61vLMM+aaG+WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Px9nbS/p; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DB1dPm017986
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 16:31:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=M+J5ukcMVl37T/9FWTJUvNGf
	Dr2aFnYEvXR1o2qyJEI=; b=Px9nbS/pmxQ1JmNLhVKQyzag9h7IMdeF/kr1sF63
	aqfu9t3xqG55T2XZqLsitCTd7MQxMH1xQF2ouu7vGlQmig+I02C2NoJSSu9DM0ih
	BBfJPoQMOwVV7k5RJNKOBPMEY5zqPelxlkMbBRSaZvCe+9nngn/Prb5KvfnZ1v4f
	21lbWSfAL/03H+rxYSX3Lf5E0xnFG2efLxbvuWxqsa9bDH4l/pPSNDWs2WHG9Pw7
	2WM7ZwJ6uH+NcxCLQxN2ZWuLKCzlhCk1tDkZEpd3ryTx6hbUPqm5yUXDBaV+64Jp
	MOaTEuuW9oePd1bBjzMWoEWWQiIGMNzTBroS2rRBzu3ELw==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfdk5bt8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 16:31:37 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-54aa5401327so3128831e0c.0
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 09:31:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760373097; x=1760977897;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M+J5ukcMVl37T/9FWTJUvNGfDr2aFnYEvXR1o2qyJEI=;
        b=B403TS/itH3LRkVUck0EcRDE32PVW7lYzhOr6eKK82i86HuIfYpn4K0I6oRNtvZRtb
         q8SsxAMM+6+nQhXFoT8bqjPO6ASsnVVcT1pDI9R0qP1VfbW1YlAXxeRD2IPuLfyMp9xE
         dlm0iO7fwQR8SCwHUjlQ/41ZEPrFsAvYXD1jpG9SLY2DfRGj+3ccvlgOhVLkQjEJzOyA
         7HtoiERLsqfvNHJbRDxCDW8SLE2NZfkURO8a58Rf1yrWHoDpLn3oqshL5mX43h6DUJhy
         ILKlPtBEMCS6hpGEaHJR6nd43FQ6+bmfIekuce+KtykJZzupvOUizok+u4BzoeTV59vk
         Vlpw==
X-Forwarded-Encrypted: i=1; AJvYcCW9lev1L+NLsL2nmfQBcwgSaZf1tT1cq2F7lRmfsO7fUIMBN0pdW318GNQPB+MYia5UhS81/LzBRlTS@vger.kernel.org
X-Gm-Message-State: AOJu0YzVmkywrqPM2UlR0sHYFn33wZPg9gYXTBQ3pOUQ8XMwc7hR7Zku
	0rNijlUS5qC43fmISPGp9ZWuCliOcf4qGG15ALVUEU6ZMt7d4HvUJiO4zGRnDTQ3nm3+/PxUxPQ
	ibDL5qbi3M9p4nzcVgyBAtCzrHWrhpMqs8pR5eao2R5f0EhoPPCr5QohjcQnU/JHs
X-Gm-Gg: ASbGncu+aGUjn4eZQqzJ1w+TvxjdMdzoBXutj+83UO+KBwyOdP7+ozsvCYhtpH0LPI3
	gqP6Zv1Be7yjiIYuNL3Vvj7SNx9r+JvZJmMil43+TbiOZuD/2asZaHh4jJ11SuGINHOSWMrbFPz
	clKr0+5ZDSjgf4xMzm3L4k6iVn6eDpGyJJj7iiOB0TSViHtE1arB919G4pIQjJHJhEQmyZmDzya
	vntGLJgCSp/+vowMBnSeNzJB44ECCZmcG8jD5xfzvLQfHn+aDdNDwG3A3EOAgVBB67sKj3flF5T
	YXxd4cUNRwLcxQQ9aGh7zEfg9Q0jQd8sPDUImsTr6pIXiqVehe3RIBTOpI4MTzDTZB5qDB3x3Dr
	XqniVa8hndPgYEm0V78H678Qj6MMDxIFQfzE/scKQmW6J74/6RWxG
X-Received: by 2002:a05:6122:2a0d:b0:554:afe3:1fb1 with SMTP id 71dfb90a1353d-554b8cf023dmr7813083e0c.14.1760373096836;
        Mon, 13 Oct 2025 09:31:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEGHELLnZD5uUDdYZlyXcDIBhlCnjKA0/abnMG6vLUVDWQv5vJoNIMTw3EueGnWuERzBnCkHQ==
X-Received: by 2002:a05:6122:2a0d:b0:554:afe3:1fb1 with SMTP id 71dfb90a1353d-554b8cf023dmr7813011e0c.14.1760373096190;
        Mon, 13 Oct 2025 09:31:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590885638fesm4274022e87.81.2025.10.13.09.31.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 09:31:35 -0700 (PDT)
Date: Mon, 13 Oct 2025 19:31:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: lemans: Add resin key code and RTC
 node for PMM8654AU
Message-ID: <rddqbzh5f4evwsabl5wvpsaxnbq2ndmedwplsi5wstpqxib6kv@lx3lutmsvxgj>
References: <20251013-add_pon_resin-v1-1-62c1be897906@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251013-add_pon_resin-v1-1-62c1be897906@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: ipyhSYqTEdmFzEKELTXFppqbQSsi6LxW
X-Authority-Analysis: v=2.4 cv=MrNfKmae c=1 sm=1 tr=0 ts=68ed2969 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=o6lFeYHLYNB40Li515AA:9 a=CjuIK1q_8ugA:10
 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-GUID: ipyhSYqTEdmFzEKELTXFppqbQSsi6LxW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX1RUIv0qZW+kd
 pYsYa2PE52hWeQrMJ8rh4mzhBumTc9DaYRkWMW4G1Gf/tKlU21eRUMwVuMoonp7RAPBVKRd2nAa
 QQmvXY2+tL9fdzt5Jxp+y4Ubsq0xsQVvf0im5e4Ma/RVkT9rNkBGKVNvgy0VFx7hCIYvOX3LtvX
 Yd7/KiTjwdQsv/srXAU1pIQmqa+r6kMeJKCTMOhU6y8COTVs8F/aWiN1L2ctrR5HONa4QL2DxS0
 QeXX5/AzDIx8mCu2pqmDpsOuC4cQ0lvqbIy5MsGajdzA9DSHk2ZTgDoxJ2ZISv7V5vU1EmKGhL1
 ysmb94/Yb63UtxL4tafK1XQl53ofMZKV2ec11yYPtOZyavTrgMaol1XpkcoNbtu1ivdZG4cabuS
 E+83paMskFsuWfcEXgZHELPPo8UBwQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_06,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

On Mon, Oct 13, 2025 at 08:15:23PM +0530, Rakesh Kota wrote:
> Update the PMM8654AU resin input code to KEY_VOLUMEDOWN and
> enable it. Also, add the RTC node for PMM8654AU.

Two independent changes. Two separate commits.

> 
> Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts    | 5 +++++
>  arch/arm64/boot/dts/qcom/lemans-pmics.dtsi | 7 +++++++
>  2 files changed, 12 insertions(+)
> 

-- 
With best wishes
Dmitry

