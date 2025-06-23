Return-Path: <devicetree+bounces-188579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C200AAE3FE3
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 14:25:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2CEC67A1044
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 12:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 793837081F;
	Mon, 23 Jun 2025 12:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MsBm47k4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35CA5579E
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 12:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750681501; cv=none; b=MsOD8QtwVgx7MRTJCT78xqbQW9UpBckpX95fSryo+43I3TpSVxBtCQtX3AL8i2uK8q7mO66CCFuRgrXZT/aXsE1xEE2LpYBRD82Ecwrxv/C2G52wGDDVufdfzii6QSH43uo4KHfkf7ItBlMdW7ygVQRNTwTGO57u55sErnMzV70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750681501; c=relaxed/simple;
	bh=fzhUimtOoDqURWlrpzJ2tptbogob8EGE3/Ps29ceZfA=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k7ekndqy45jE5juKA2D06uZu0Uv+Hsknt+TWjrAmzzdVxBdRuWj4NWb4wPvVvZAri9JFzxmG7af+IzsqlCjzYDSPxWvA6FdGossUp7qoKB3GIr6+RuY9y5AYMjOrGyvRgaalsyqp71cfiK5+UtqkqG3miZ67GBDFKcgUB1ghEKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MsBm47k4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N93IRw015940
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 12:24:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6lpkVkbFFzrvmphzfIGrU6Jd
	Kd9k8Ffe4NozJc/9opA=; b=MsBm47k4skDxtY+Uv3Onf2K5mjv2vbUvMYiDgk5D
	9aujx/mCBZdxI+QxA1acvBNe32ONBgIAcNqLMt2gqByP+BBWG+FtJyMTgysGjVxT
	0Rkt71eJ/03QeEnDeXfYHY1lw8zsNg0E1hpMODvAQvblKvy43g5jby+GGHcKsoh5
	2KLqWDKVCeYYQCsNyYDeTpRJvZf6qo2Pih1VX/PEdaitgDp5PhGPu63eWHbHL606
	1tBf2+92gCbjET1ej4JiIyYNyYD5Op41DZl3W0OLzXHsmAG3fbMLJvHE3Af4rUkM
	8q5VRodbTxqke98b9dIuF2OxL5E4lQ0a20VQng/v4yi2PQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f3xu0jj8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 12:24:58 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d38fe2eff2so703685485a.2
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 05:24:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750681498; x=1751286298;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6lpkVkbFFzrvmphzfIGrU6JdKd9k8Ffe4NozJc/9opA=;
        b=g1KEcT3RoXk9Q7ZSzB0v3s318e5oGhCWgB6XtQEXyGKnZWUKbehUVH3ssnb/zyFCcL
         tne+NLFfH4RVptHYwhRl/sbDzxRP2PP9hLzP9Z3v24sSsoq9lWRQx+mNeK0TiD5hbXP3
         XU5NSnPuB1Btmswk6OLrLEwBvADIXFyZR+U0rwyf0LCJk+3ILe6bobnSlm6R+SDdlLmZ
         1a4U2U/W2tEw9QjTpGN0i16E8qtHT6N7b936tLUthwyuH6FYGhDrM8riDxavhuQt+zGx
         l6v6GGSXG+RnruHxOrsZTq836EQzB1iOLV5cSlcCl8kDYjWKvleP2xpK8SwQtbwf7Lx5
         ycyw==
X-Forwarded-Encrypted: i=1; AJvYcCWtXMBNdNSkfvLU7HculfAhkaocxjSogdYhkwY2p8OdrlrPFefFR2e/Gd9TkmAXZ/tz2pvfWCliDUmi@vger.kernel.org
X-Gm-Message-State: AOJu0YwjSKDB/iMM4w7sBwcs4R7VU7c4wSXY2/EB1tnqrQiC6Hu9k9zm
	W88OarfpUK++vWZpctVmnoG65YdMfNEZQKKnvQQLwWQB37JmkQiUYyIzBNFeK5dDa/MxoGfBnAl
	OyzA5Ww3HAIeIFoULPTbRClUB53IHeZ8UDiUs3pGZO2ZmD4v8W9LvvgWo/SxfjKcl
X-Gm-Gg: ASbGnct1oPOfJ+EqjVo41LAmXPVOc4DmDI2E+dO/WPdoaSdasyw0qLqlOUltuDMnJiH
	5vOVh08LQJbjFJrGT6ki+Y/E3Btvf2Sk4HrW8k6wxsF6lOaTKzeHYZLqwf6WbjLrj18XDCrLN6x
	l7i137aKWz9a5JFq00I7goyWDSvhfZZX8C0K4Xkn9gNoBx7fSDD513ke/HnTNWr+jfso2TRk+TY
	iDms/YAirbkcRVgOvJlWIy0Ya9wilTgFZgYNkwTwm/sxobRdX7VjLbFoBfEfhvcqlk/BH1NPN1B
	QthV8yZgTgGxV8HRlKGGRo7VXzzfwuascKpN1qWIW7+O02FMysQAjMXp7w==
X-Received: by 2002:a05:620a:4610:b0:7c5:af73:4f72 with SMTP id af79cd13be357-7d3f9930eb3mr1617103785a.42.1750681497628;
        Mon, 23 Jun 2025 05:24:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxicgaoGqZS7jGBzLs7Z+Z09iOtzjIk4ozOFpADlSlP7VJDpknaILbMhdjXScjGiHwmi07ew==
X-Received: by 2002:a05:620a:4610:b0:7c5:af73:4f72 with SMTP id af79cd13be357-7d3f9930eb3mr1617098885a.42.1750681497024;
        Mon, 23 Jun 2025 05:24:57 -0700 (PDT)
Received: from trex (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453646d1508sm108268135e9.12.2025.06.23.05.24.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 05:24:56 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Mon, 23 Jun 2025 14:24:55 +0200
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
        quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com,
        bryan.odonoghue@linaro.org, mchehab@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/5] media: dt-bindings: venus: Add qcm2290 dt schema
Message-ID: <aFlHlxO/V3MMARVK@trex>
References: <20250623105107.3461661-1-jorge.ramirez@oss.qualcomm.com>
 <20250623105107.3461661-2-jorge.ramirez@oss.qualcomm.com>
 <cbd6b7e3-850a-4bde-a1f9-393c291c1ee3@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cbd6b7e3-850a-4bde-a1f9-393c291c1ee3@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA3NCBTYWx0ZWRfX0SY823DD4zmI
 +rdCTIfC8x/mucZEMREFnubsxmnthgCv8OEz7wzMUGxFZEmEio+WoJVxId/HutKLetu9cEOgLbs
 H6hpTxsXTp7I3KZoTRmYbJiUXsuqb/UKAIyLHo+LNCsNt3Eve7NRgmO9hYUjnHRML/9B0J3d/dz
 bI4olEXPcIU7gANtpJ+s0A0WgGdckg7y8bnajHYvXoPM/JZoFbRrmgEWzialcUd7KFVHLzUPTDr
 Xv0oJYPjU2t8r4AhgNjz+YFynfq+HMhOi8AivwEMLazyIsArQs0bStznyiCzfa5qxydduHEThhX
 qsx5YHHElOZTGKLser9r24nILuBKhHQFFbL7bGFikwU/2WPLsWWS7hq8H6YHaYRT9r/2xY4VogZ
 Hv3ziyRc8OEKlfHeMi+7LtrphFyMjJZazbbiwB6Tb+Sy3KYpJRlKBLgNy9gEAnXwch+RW94J
X-Authority-Analysis: v=2.4 cv=SvuQ6OO0 c=1 sm=1 tr=0 ts=6859479a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=kj9zAlcOel0A:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=MRJ33UoC1PT6Y8aHHn4A:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: R1cD8AqvcGqetBbsKWvoG7woPKnid31v
X-Proofpoint-GUID: R1cD8AqvcGqetBbsKWvoG7woPKnid31v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_03,2025-06-23_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 impostorscore=0 spamscore=0 phishscore=0 adultscore=0 malwarescore=0
 mlxlogscore=618 bulkscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506230074

On 23/06/25 13:49:21, Krzysztof Kozlowski wrote:
> On 23/06/2025 12:51, Jorge Ramirez-Ortiz wrote:
> > Add a schema for the venus video encoder/decoder on the qcm2290.
> > 
> > Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
> > ---
> Don't send multiple versions per day and allow other to actually perform
> review of your patchset instead of sending for every little thing.

No. this is not what this was about - I already explained to you the
call I chose to make. You can disagree but you should not misrepresent
it. 






