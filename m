Return-Path: <devicetree+bounces-259439-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLjKGt8/d2mMdQEAu9opvQ
	(envelope-from <devicetree+bounces-259439-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:20:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E713586B62
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:20:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1382D3003D0C
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:20:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C03A7314B73;
	Mon, 26 Jan 2026 10:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cW0h5Nyi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="g3nBEURC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C9330214D
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769422812; cv=none; b=NEdCusWxYdviIP+nvZQlTuv3B32iWPPBwbcEaVaIjPSj3cr5MPuX1ZSGmVHnbV6TXteGCid5iIcz7ed0gOXmI/oLPFQwYveZ8d2ITCbRq7qfezJYzfk7h3pROVBDUI3Y1vmuqsYZBPnHH53ahHapshHfOpvSIoUNG7ke1AXKGoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769422812; c=relaxed/simple;
	bh=pKcJhyy5nmwFpFkBIGKJy8DceYT6qS5Qhp1XA2SJfPM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O13CIIfaVbGiNmj9l3Fbl8eSGBKDC2KOxTRW+cZN6mqRweZfT+i8N+2kT72EZ2nZS+fPMkPU0kGMKNUFP0xP1XmRc8DN/a8hrJTeyQsGo4M5MYLAknvPPJJKHJ0PDtLkKL/SrLyane61P0qV7dyVr18Q1XUfMiYNvMze2cKkyCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cW0h5Nyi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=g3nBEURC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q9TnpX1782798
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:20:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8aOY1BIogsBSJLCb9WvzQfe4
	UP0ALZx9iSHXYMS9hnY=; b=cW0h5Nyi1kTZUef4BMppF0NRpZj92BhaNvvXFGAm
	FFJ1SAwIJPeJ1ZFeFKP6QHVXFQsIVBJ8qcEOoa934QIdWwP4f0AkNP5l7Moc5IsR
	h++hGESZEqfPJw6AVjUacyIWK0wodRBL1uqlFzMxahBI2lZqMQLsGcNSawVW9sy6
	TK6XJwhxo5QlHF5OWyvrVzj0j5kLqqLr0tcOEFSkx6w7HwKt85Pt+/iSlc0iV28s
	AKDiYpaUE/PvlOo29Cqs5vHvgCtTkdf6HU1w43thWZ0Rw3dkePvAMTPOEK0Gvc4L
	sCf+jkP1UHQm2iH169PCkv50uXmkxb+NomA/Q+oXIce8eQ==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq2q44y5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:20:10 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5ee83da1811so20060249137.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 02:20:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769422809; x=1770027609; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8aOY1BIogsBSJLCb9WvzQfe4UP0ALZx9iSHXYMS9hnY=;
        b=g3nBEURC2pa8uLUSSEIZgZHNOBny8mMhrvB/k77wnGtyxGao5WpeASLW736ZXdkk0B
         WZHDxWCTs8WgI+RE3ag4bb2mf+Mk0mKZ9jI6MKoh3F8XtmUboEhGfmkPmljGkjLexcXk
         Z9yFsQbPDtNr0yTWekuxp307apBFY05ucbJPibGQdMkQyUwLE7HTPX7Vl9iv8cJk4Dv/
         Tboi9b2nGrCoRlg2syz7p5iWIrjox16FhIyIlrIkCKv1OjSDwQmgWRPhuzSo7Fdfvk6A
         XVS7JOMlQxAFLzcazy7DaFYspn1adeQv7c3EeLqVIyXdTBFkt3n+y4nH25Ze8s2cyfpm
         899w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769422809; x=1770027609;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8aOY1BIogsBSJLCb9WvzQfe4UP0ALZx9iSHXYMS9hnY=;
        b=c2ECsCO9R4AmDtR4QSrnWUuAG3o9WGQvyVwmAOKVljwJ8RU/Q/g014MFcjPawPhWvc
         C22tLX6ees21mboF6lC4xmyBRECDhHMuBKRWQG87esP8VpTwyEvgRlGXDWHlTmlh0AR+
         wjwgGQLAL6a7XnJhTDZqCnTC9UuXkmEDI99OEcLVO+tY7OcjT1ormjX6VwAUm7EQRC5a
         Oz3qiWPgaaSkiL0nBKUnYO8ULeS1mbpjODtPqv3dXL1IjJWHXvVmeW/01/Va524CKy07
         MEsxClbT6CAHuOK/UW5DhGbVZmGOtOdHswQ6pJezLm4T2mZ1LaRQdCnrOc1GZhP3d3f8
         ht1g==
X-Forwarded-Encrypted: i=1; AJvYcCVnfluYFAh+TRnPQ4EpeO/FqjSrWqGoZCuY/iyI8vnhU3vo0gNkKOWV181cRW/a54qpJe2AT+4lw2/j@vger.kernel.org
X-Gm-Message-State: AOJu0YymqEjl8/Ufcm9c3cHCXbb+fyHgdggWNFQ75u586LXtX3B2LeyD
	qyCg/4CmCywaLYYIawWvSKEhPrVmFB7M44SdFv/sbcP6qVh6Sy3NNWV4+674y42X7VtI8tBSGRM
	E723patnqN53oMPM705JVs9E+uqeSAS7mgIO0BHxUtS0LiS5pruO2Okmv2ZDRk6Yf
X-Gm-Gg: AZuq6aIA2WWAO5GhpL6oQz5IkUpAj2XtHu4hdXKjYhF7uQl6vmMcfXU3JsMbq5qoxK6
	gpRfpPO6c31AypyLzhb3xZPaAp6hA5KRs3FZ1IQHY49HAQ3P6BMLEMNkMvBVRYDdBGoG0kRKPQC
	K6j49h6rih2+4NjPiKD0CJJs4fQgJbnJcVPXsoZ61NLT3YW/c2lDWVJn0Ujs6Tup0Nqx8whqDMV
	4ekAfKlLU4Nnq0cgiW//+TLvpVPEAKGAMXb1dwTkPA4Pb9hlbKLJJmkkbaZwIt7BAiu/ZM5d67j
	Oxo16TsRXr2UZW0XxMnJ+Wsx06NSxh4HhZ+xMr/PtrslsNsQhRg1VuoB3XTOS3iDGWMWWzBl18l
	gdSvUtStxbvHBVLMT3MI79W+hsDOdzllVAsx0SnfKhMvpcgevuYusaIx56RYI/ZdDQNfJrJ4Wbh
	BMkK6fQhNBks3NOfNKVRUu018=
X-Received: by 2002:a05:6102:2914:b0:5f0:2451:5f2 with SMTP id ada2fe7eead31-5f576364731mr1327551137.19.1769422809443;
        Mon, 26 Jan 2026 02:20:09 -0800 (PST)
X-Received: by 2002:a05:6102:2914:b0:5f0:2451:5f2 with SMTP id ada2fe7eead31-5f576364731mr1327544137.19.1769422809004;
        Mon, 26 Jan 2026 02:20:09 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de48e5e89sm2548308e87.25.2026.01.26.02.20.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 02:20:08 -0800 (PST)
Date: Mon, 26 Jan 2026 12:20:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v3 1/7] media: dt-bindings: Document SC8280XP/SM8350 Venus
Message-ID: <hkiyrszvcnczancdrbxgjkvyy2ifk4fm74v5meba3fiuseder7@yagmskxu27gh>
References: <20260125-iris-sc8280xp-v3-0-d21861a9ea33@oss.qualcomm.com>
 <20260125-iris-sc8280xp-v3-1-d21861a9ea33@oss.qualcomm.com>
 <7127f32a-0db5-4f30-b1b4-cf72fc117fd3@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7127f32a-0db5-4f30-b1b4-cf72fc117fd3@oss.qualcomm.com>
X-Proofpoint-GUID: EaZXu1NBDBB_5c5oeT2v5OaGNfV_1b8J
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDA4OCBTYWx0ZWRfXwnnQ+7YE8DKl
 /K9uGR+6f6TNFRjw1BIMY6puXXVf7dJL5JifRmHu0oijJ8FpWMIt3tT4ewzu2pNdlRhZlN6XNdW
 pAWwbtOGS3OZJE/WzG1XYH9etFbaGntgkzJsZsuhMVIb1ZPa8M+D5JV2PIkzbGAQYdLod1s2p1O
 LBxeUibEJt8C1wqiBK+bfP4fsawI186KNRmiywQwcPQHPSsQVHHnredT1jtV8HN9dDbgA4l6/TR
 aEu3j6F9dpmAnIvj3p/xOJOXUZb7WXIOp2Pi7KUTvLHNIjokXf75PUDr7eNFJNVC9Z1GH8Kkgez
 2SHf60hf3OwzYGoYwbMMyHJ4+OAQgtG98OQ3fG2gMJ6Jgt0iipDZGgJkWcMsrxX+dc2NZ22QoLF
 hbdbUAlO+IdixZvYdQQV04aQ2ixx4CcI9FP2glV0UGIJ33x3rhGvpA6XfZGQPabXyQFT0rxhiHm
 47r1Rk/jM8xjczLhf2w==
X-Proofpoint-ORIG-GUID: EaZXu1NBDBB_5c5oeT2v5OaGNfV_1b8J
X-Authority-Analysis: v=2.4 cv=POECOPqC c=1 sm=1 tr=0 ts=69773fda cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=6_GLyHCiwB-T1Dm2cJwA:9
 a=CjuIK1q_8ugA:10 a=-aSRE8QhW-JAV6biHavz:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260088
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259439-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,linaro.org:email,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E713586B62
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 11:00:56AM +0100, Konrad Dybcio wrote:
> On 1/25/26 4:32 PM, Dmitry Baryshkov wrote:
> > From: Konrad Dybcio <konradybcio@kernel.org>
> > 
> > Both of these SoCs implement an IRIS2 block, with SC8280XP being able
> > to clock it a bit higher and  with SM8350 having 4 VPP pipes, while
> > SC8280XP having just 2.
> > 
> > Document Iris2 cores found on these SoCs.
> > 
> > Signed-off-by: Konrad Dybcio <konradybcio@kernel.org>
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > [ bod: dropped dts video-encoder/video-decoder ]
> > Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > [db: dropped status, dropped extra LLCC interconnect]
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> > +description: |
> > +  The Venus Iris2 IP is a video encode and decode accelerator present
> > +  on Qualcomm platforms
> > +
> > +allOf:
> > +  - $ref: qcom,venus-common.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - qcom,sc8280xp-venus
> > +      - qcom,sm8350-venus
> 
> FYI the hardware is actually named "Iris" starting with 8150/8180

I'd prefer to continue using the name that existed in the earlier
patches and which has been used for other chips in the generation. If
maintainers insist, I'd switch to -iris for the next series.

-- 
With best wishes
Dmitry

