Return-Path: <devicetree+bounces-234558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 897AFC2EEF3
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 03:17:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3AF9F3B6109
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 02:17:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A04B3225A34;
	Tue,  4 Nov 2025 02:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z4LWXKL3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Bsdq5u3L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0D21DE4DC
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 02:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762222663; cv=none; b=ejwcKTPaRHzR2X/2UaUllxGFzOgzs+LwNvINZ0ERDeNv0qaBK2qTIsr6AJnMKjQySPBCdsFJrCPo2hL4QMlKL297uMnwfO6LdT8HCLwGHSxbuFpvLAK+R7EpeAjHGAswBQQ2kMpko6o4NuWp7tk2YDrvQXB3V+siQm861XiiEak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762222663; c=relaxed/simple;
	bh=ExrTOlDJfBqPwYdVaOdwSFv1qwdVq9mca34J0IGZUqY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gImv1TaVzUoECIC23FgTFBbc/Ls2EW++YZdHfxWIMgx89BbMX+Nwyv/szt9Mu/92O2vH/2GalWYKxR0/2PM+gdA78L+wYGeAZW0WNtFMwv7row+lds+eyKuQKr72q77GYZgMRdGNK9bmI2Ygx2eFCc0OuoOm1xsxZ9hilwwKCa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z4LWXKL3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Bsdq5u3L; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A3Gg6w63683624
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 02:17:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=knpE3mIPtxcnrRPa/ZbonLml
	p8HVii90osweuDpsQHA=; b=Z4LWXKL3Jkv4GzoNYeaj0xkditIgVLg8Z8NkNd/N
	ZKC7hsEPCHoPiADOSZ8xW9B6t/SlMIA+uvEaMXerfc8ijIJlVBVYpVHylstMDT9x
	+Ig0X1craoF57/dIJF4sLrYvyws3J/9m8L53I9NkawLfeFAlwP29fk23iWEcgwho
	7c8Wun4MITq7XNHdgVDJTQWVXQk1OQU/57aWbOYThY0wXvKPa1Mi8QVxWDwtoyOs
	tauGmn6VnCRivsNhuIchegu4XXGTSSx5LMV1zSQSZumkfcZdHavlyFF7Abpk49Ii
	CQs0aF2n5nL/PhpIn7/hQ+D13Do4qg68R+SZHKs/rPz1pw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a6xjqsred-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 02:17:40 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ecf5d3b758so107897531cf.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 18:17:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762222660; x=1762827460; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=knpE3mIPtxcnrRPa/ZbonLmlp8HVii90osweuDpsQHA=;
        b=Bsdq5u3LNvREUReMQhZ8IwwoYGEf5Fd8ggmhyks8si3O/Qf1FntsgkIzNX8OKlBr5q
         wY+m33ZIxgyM0ZD9/t4C3FOLWLQYXlErlpEKfV6UPtVVq4yODZa07Vvj+LpdoXqepUNT
         iESQ7Qqg9PDzNagE0pLbaqH4MiU30105H3J7KOQjEE7IfOTRqgAYy7fiDm3YIVQSZxCz
         cdemSNt/DZWKZkwXGSDdrn3cSa3bRvMI/SpVkaqx9xWGIryuE5twKL6fbYWv9CT8E4tB
         I3BFWDZJpHXsn7iTXY+n6CfiRt/DMbtentO6TCZl3wBDFXa6U//05G4OaXw51os1/rhC
         piCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762222660; x=1762827460;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=knpE3mIPtxcnrRPa/ZbonLmlp8HVii90osweuDpsQHA=;
        b=pmefJW3qV+NXj5BtkVBrXlqN4x+C7VKVQ6CLIKn7d9NeOg/z55g2uZSPvcgI+QOXOl
         YbsjU0tO9JNP2hr2+lFNoIIXPYYNWQbz+ewdWAHP8k/giRtnZOZ/MjNFDdB2UbTLrlAc
         G2ss7p58zo5E3VtAUF0Yw4kjpqpYc0XW0NNdzX2WuPCp9Zn3Ca70DmCHYZIuIzO8PME7
         R7U3yBzhKyZJzUiajIDcNmQRc/63LEmmVycSY3Zn3eaJcIdTqBbMboLu6K53IJ/r068Z
         5DXgoRjM9Z3GfrN8W/Ahu2lVpzN4kM8g60W9mFoCjbmoxof5BkLMQEhUFnPwCRlVVqP2
         oqTg==
X-Forwarded-Encrypted: i=1; AJvYcCVyZaYb8H1WdSonFyZoLCEF0hCxeXjc0uWWFosQX/rWBdqTDO7EVjAcedwlGWjlLMiuTKh7y9UfIJVZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy36Hk8jIpGktjIsDvwwhFNCjx8qdH4UXbLRQRw1w2f0b95tVtT
	NvLOMCyj95aqIFZYKHBd2mOgKn9iKgVYTDSdabBS/rxfpibGAjrLoMLwRLGH5uAU77ndnbsjbxm
	4QRFx+LsGhCmqRH+ZHJoC4KVuO3a4bmHeIL19R28CQcj31Fjj6DhlA8J+4iDLnvNV
X-Gm-Gg: ASbGnct2ZFuQPdRb92t6H9l2wZAWFj+xS04cGWq0hU/WoUrz7OOCagPnTpq7MZ2WsNM
	MvrjqxaphE+SkvaCEJy60ylnyIlMr4vHysjAKp98kxdFeH68u0pvp16aPBhoUVOjKP+mHbXEsk/
	GsbCmpqBkLi6BmOtOoYZn/won1qah7vu0dVW7g4GKEgrM8CdlXvDLYQiRKcb2jLwxMexpfNGWlW
	7bWZo1R/NCsSrZ/J5tR6HMPnY3DTvEJqQXAksyWmfgCCEEscQZe+DQC+VA7od/jd2PBFdYsFv06
	IvLuUCaj1VgjCj9FFB5J29civa1ceHIM1AJIgUpVV/PkHKnoSwXI7kOSzt9l9AfGhYm0eSa7s3H
	M62CyCTu6IgB1/rJ7QVBvBpQElaOf7Pim9NijkpPPtormHvt8DPgZwoZtaKN2WdngVWHIpdK90N
	g6OUQt+4OTKTGn
X-Received: by 2002:a05:622a:4d89:b0:4ed:1ae1:5390 with SMTP id d75a77b69052e-4ed30dcaa18mr205476571cf.18.1762222660192;
        Mon, 03 Nov 2025 18:17:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFwnCEn0+BeYW2n8xBwzc1o/g3a0jxTr6m0tmMJtQut2Fz7kPHouxaP2IscZJvAUGWO/slLYw==
X-Received: by 2002:a05:622a:4d89:b0:4ed:1ae1:5390 with SMTP id d75a77b69052e-4ed30dcaa18mr205476221cf.18.1762222659590;
        Mon, 03 Nov 2025 18:17:39 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-594343b7cc5sm353179e87.49.2025.11.03.18.17.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 18:17:37 -0800 (PST)
Date: Tue, 4 Nov 2025 04:17:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom,ids: Add SoC ID for QCS6490
Message-ID: <i7qxr6lftcgzwku7nsja3wwk5hb54xquqcvep7d5qahssjjvw7@m7w6hj2h3r5b>
References: <20251103-qcs6490_soc_id-v1-0-c139dd1e32c8@oss.qualcomm.com>
 <20251103-qcs6490_soc_id-v1-1-c139dd1e32c8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251103-qcs6490_soc_id-v1-1-c139dd1e32c8@oss.qualcomm.com>
X-Proofpoint-GUID: slzcSG0w5U4d7B9fJkJaLPdShcTo0mXP
X-Proofpoint-ORIG-GUID: slzcSG0w5U4d7B9fJkJaLPdShcTo0mXP
X-Authority-Analysis: v=2.4 cv=criWUl4i c=1 sm=1 tr=0 ts=69096244 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Yd8kl3vfLVjVNOsiEv8A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDAxNyBTYWx0ZWRfX/Er6t952Lgpe
 /EPrjAbehgt+b8YBdcwymVBJ/tucsGOzXFgenWyIJsevwUFk9dSvJZuGwHverSkist0I8Aw7y5y
 JYMkcDoVcnMxm23HTsoi0GQCil3zI0ykzVX19kVgJ2/w2fwf78TUkKDFAdzvjVXY0OioIwagm2B
 JvYXuKRu4jrc5CJhd5wJllvZc2D+4W26kta7BfOwWvt3LsLzsIT8zcQGssDgX0IQtJTnX3tFo9U
 xVCAOOyQRhNaanWpV7kekl53Zrk3xRo68yDHeSoUQAsQbpEwWhwhuLCSzNdNOjp1iK74vPh3xzH
 KGH9eOXj5XCG3PxoboQNJNaQf6dJlPOOlt3EcWwpCWwpL6zS0Hto9LBwso27lamjIa8hfFowhbf
 TwtJm5H7RA860yJv7ZMg/TI6CcLdZg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 impostorscore=0 clxscore=1015 spamscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511040017

On Mon, Nov 03, 2025 at 04:53:10PM +0530, Komal Bajaj wrote:
> Add unique ID for Qualcomm QCS6490 SoC.
> 
> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> ---
>  include/dt-bindings/arm/qcom,ids.h | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

