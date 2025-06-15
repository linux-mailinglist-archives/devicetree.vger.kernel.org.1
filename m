Return-Path: <devicetree+bounces-186010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2ECADA1B0
	for <lists+devicetree@lfdr.de>; Sun, 15 Jun 2025 13:39:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F8AD3B10F1
	for <lists+devicetree@lfdr.de>; Sun, 15 Jun 2025 11:38:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4D0C264F89;
	Sun, 15 Jun 2025 11:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nIxCng89"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700F620A5D6
	for <devicetree@vger.kernel.org>; Sun, 15 Jun 2025 11:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749987543; cv=none; b=R/92YsTbhSui2Q6x7BKZ35pDffRBM8174LoXHTFBnDv+9AzHHDTSI8Q/cg+siKkzSudMQRcyZDDwUcPY5ELV11kD0KI5fVER7AmKQKQTjv8cKaoLZxwVS2pwjT2x1hBD2B2aS8wT/sGlDjpdDgF6KRxXuI9gPfSp4DcdDsZI388=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749987543; c=relaxed/simple;
	bh=1NEF4CuZl6XkHdOPgpRvdy/DJwiozgv/UKWN5RSkn7I=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ayjqglMZM5naEW9K5L+DT79OEQU3rB92dYMeVSfMkVPFpDZ+vEaJ5Q6LCzVyGkilXvRnLGJSibKgoTVhuBppHGmeGTIBaZxh1sz768+LGjzT7oQdOwFmTc3LL7N1F6+e/OppKEToiU4lo8pLysryrEvPLV7PgIOi0cD7V4sExxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nIxCng89; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55FAiHxp006422
	for <devicetree@vger.kernel.org>; Sun, 15 Jun 2025 11:39:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UBoqX+3Hym0qFKqFeJ3z8WDW
	1r38LQFsqZKGNgNTNII=; b=nIxCng89HHNUp82AHFrMfHUofZpSIEatGzJIRGXg
	nFO/+HPocd/chbvjqDnUcYlen2HvDVF9FLU6q7fhhIajEDut4OI7jzAVN3MP5fjW
	aP6IHiEa9jjAP8ZRlqGKrPvqL4klvk0mUiAJzSyeiurs8Up02cMn5lSrjYOtO5R0
	41QWK7mCzL5vFyV3eaVDyMbxTqTeFv7+OO5OultjDw7U2dkFfFYYbYMRH71Y4Ahl
	uE9v9gYuJZ5SJdncJ9aHWOqTjDLOdfvFmmHgawZS5cwSZ/29NdUTe7XJ0xdeeCkB
	rOqNKa5KWeiCX058AXotW1Tlxne5NAdIWr5XmwI8UHc47g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 479qp5gcgq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 15 Jun 2025 11:39:01 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fb3654112fso64576366d6.3
        for <devicetree@vger.kernel.org>; Sun, 15 Jun 2025 04:39:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749987540; x=1750592340;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UBoqX+3Hym0qFKqFeJ3z8WDW1r38LQFsqZKGNgNTNII=;
        b=BCKyo4kxZt0Bxj5v3hlHKlYjkQrnphgYxU5+xYbCPFIWgocFpMLFyLlkQLnEQymn+2
         7FkEdRwQ78E0whFj6OOZSztCnAR6KhJPWeBrE2NyMwc1kgV/rBB+yb+BhStsCp6plxPF
         rydSisQXC3wuS0IDu5ImpfF7Zi+Z91SvS/dSyOulGWuFOoFmQtr8nTlK+nQkCL0aaOv6
         qauYCISMF/5/6xcSVcixkQFOfI+5IMagOSaC9S9BOn33/ErCUTHkweyG/f5J5PMk1lng
         TvyjBJl1P0fLQt19dUU1JLHRkglvof6uXOVGGOgak5gpLpCjBuj2Gs6ugaQiavwpgWYP
         hyWw==
X-Forwarded-Encrypted: i=1; AJvYcCX8S1YQ1Uurm3zHolYlEFYhuxWg3V9AOIjvgqhM8MrHIMqu1I/PRf4Uvbs+gjwUURpsZ1aXx28eoxbr@vger.kernel.org
X-Gm-Message-State: AOJu0Ywzafcq7KqNYBIkitz0UJqgzDgBzHHfrHy4SKjfGZ7TxDGr7/qk
	wkZO9e3rVDmTtXgE32HRJkudf34HeRJ4/VjMwvJ6W7GWbDNyepdB0yAOXx3LrHAwkZJg3UzUl+J
	4DElgu+M1FaLxqJDhCAAQSQzTDRSdhDbwOUQKsfgdHbUgUVy+1/Rk+wy6e95m7m9s
X-Gm-Gg: ASbGncsIUV6cXPluUkYS2BH9W26QA5yT9jLtrNyBi4RKFzWVGdmhSVDcCJMFNWrslTt
	GiwHr1EGAUZzWQXOz+Q22XNxAvFkGDKVX5CnrBN9DkIn0E8tCUzhoaOU9H6ULjPGVGBub4+4JjE
	hkxyRmtpXHRlCr5W/+L+z5eJIml02vGXGz/AIcDKY8zmkBuz1LOqanx9Farbn6A8RslauRGkSh1
	50DSWt9d2zggwUuuBG/EFSbIwAc2mEtz4+Rmg1gk6NncGUJ4AwWgJf2gBYB4RRKD4Ktmcv+HC9s
	7kinC2uYlrI1PU2TlSpZiwKBcj5R1PzD0iJSUQ7/h8Ymmf5yvmSVL9KOZg==
X-Received: by 2002:a05:6214:5887:b0:6fb:25f:ac8c with SMTP id 6a1803df08f44-6fb47776ff0mr105472366d6.31.1749987540197;
        Sun, 15 Jun 2025 04:39:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFnDnD2gFuBvFJWw1NO2xhhVjbSbBgo0uadoGraxhCPWnt0fyCvH3k9hDcI8uklWLjMXFdeTA==
X-Received: by 2002:a05:6214:5887:b0:6fb:25f:ac8c with SMTP id 6a1803df08f44-6fb47776ff0mr105472026d6.31.1749987539808;
        Sun, 15 Jun 2025 04:38:59 -0700 (PDT)
Received: from trex (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568b4c969sm7401734f8f.85.2025.06.15.04.38.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Jun 2025 04:38:59 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Sun, 15 Jun 2025 13:38:57 +0200
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
        quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, stanimir.varbanov@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/5] dt-bindings: media: venus: Add qcm2290 dt schema
Message-ID: <aE6w0Ws9aoBYD5BB@trex>
References: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
 <20250613140402.3619465-2-jorge.ramirez@oss.qualcomm.com>
 <98cee94a-c9c5-46c1-b6eb-f5141dfceaab@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <98cee94a-c9c5-46c1-b6eb-f5141dfceaab@linaro.org>
X-Proofpoint-GUID: zEkagwDdZbUHcXqrGN16bKgs4r2OuKN_
X-Proofpoint-ORIG-GUID: zEkagwDdZbUHcXqrGN16bKgs4r2OuKN_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE1MDA4NiBTYWx0ZWRfX70GtIiUuJ0JS
 9N04UemcN/Gb9GsozYDL0IoryFjvRbE9q3b14f2B4AEvsAD5yqQpFh0Eh2GceUn2kHZoAYB/aAg
 bI5iiMwWUDLMgplUL2CzvsQgfuspMZeV68EAYv0n76yCsU/jVZPTz9ICyLqYJaeZ1Jv1WDn+opf
 TG5mUh813lOn1FBkWM3oLIaZ281ElYs4+0lwSdg5uWcXtl66dWzfWnZGYZRcnEcsWE0TroqWZv7
 GnFm9DSHX+IcAbjVLsEAYLbrovgD2HigEtA2JnaVUaG2pm51R6yptnakBg7ghSAE1XjDQ/TQmmB
 GB6jKwm0FCw1IWzK1QKx/IJhYsWK4aLmZz4gtUVs2j+sPfC3gsmFbh7rhbWNM6CS7lMiDWq9IfY
 oog+enK5uZ+vX/kdoYcWOI6qTx1FLb2D9jt3pHG0c8MOzBvcl1GdtCh/gggUzLnKThpP1Q5j
X-Authority-Analysis: v=2.4 cv=fMc53Yae c=1 sm=1 tr=0 ts=684eb0d5 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=kj9zAlcOel0A:10 a=6IFa9wvqVegA:10 a=Pi3DeBJX6SzEokaTFKoA:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-15_06,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=827 spamscore=0 lowpriorityscore=0 impostorscore=0 mlxscore=0
 priorityscore=1501 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506150086

On 13/06/25 15:20:57, Bryan O'Donoghue wrote:
> On 13/06/2025 15:03, Jorge Ramirez-Ortiz wrote:
> > +        video-decoder {
> > +            compatible = "venus-decoder";
> > +        };
> > +
> > +        video-encoder {
> > +            compatible = "venus-encoder";
> > +        };
> 
> Not necessary, drop.

ok

> 
> ---
> bod

