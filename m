Return-Path: <devicetree+bounces-269409-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CK90Myz2oWkwxgQAu9opvQ
	(envelope-from <devicetree+bounces-269409-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 20:53:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id F2ACC1BD1F2
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 20:53:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8D8AF3024BCB
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 19:53:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D928545BD67;
	Fri, 27 Feb 2026 19:52:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DQpUZ1u6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NdBAM0/j"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C9B43E4BB
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 19:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772221979; cv=none; b=BbKCCjhuwwceY65WnzkXAiqE60B3dUMQY+DTBUJcBDdDrK23Kk25L0GJWlhR5mdFAG9oC5H6jJBk5vLAfQ945WQuwLmZUjmGMOGuS/qxMtiT5XwViXlOL1oAPqgLzHlkIXXf5ofBBUBly2HTgtP7BZp+ttOsjnKnkDHuW9hWfaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772221979; c=relaxed/simple;
	bh=xQ04bpy5cT/HPxv8GhdIAXyz6uWldP+TKSsvStO1lsE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NlJ4z6stk0LPwQbGQo2LBxPZhavdeZUnlcramADJiBTcVpuQdVWUV6PJtBGLqFIY7xPTXUOtWoyQMYkphFGY2NBKPlJ4T7Q9yX474Bqdne+Q7+VFoHg/pm3GRVYeZCii7Srq2QHMbZIrxE3Lmukvpqs8ssNMGgpSPVb9LnsH4lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DQpUZ1u6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NdBAM0/j; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RH0HhN010543
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 19:52:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GV2vdzc/TRaF4f8dfG4rJXZ2
	LFeRYlnAduxU+Ay8fN4=; b=DQpUZ1u6OkALzwe1XRol5kLad0bXNl8C3geIxs6O
	wHtIS5+mvtmDkIpnYSs5MM5NVFhzRqA4JbQq+mEsORuGb5/JtLx2Vz7vRHZCNg4+
	4gYzvWTICbkau3egFf7Nj2S6X/l3aeXc39zN/GBXgPVXNfsPtiq3K/eRHsEZ1sFy
	Xcq2nmr4NLvH/o9QbA8eMPHjbQVNkoBbMET4JxE0YGqyppBdG0as3mdUsCol3OvU
	SyC2ZRcd+wpiUy4ksVWeDvD+ziP83QOLaDKx1sLKmP18HACo2EK1AhJFmcQQsr1g
	Jztt0JvZ7GSJ9dcjuB/2ICRxLyqUDyBCro6uk0d1x15waQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjuytvcp2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 19:52:57 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb3ff05c73so1854504085a.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 11:52:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772221976; x=1772826776; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GV2vdzc/TRaF4f8dfG4rJXZ2LFeRYlnAduxU+Ay8fN4=;
        b=NdBAM0/jn6vJm91KRCp7IfoDo1QF5u00irMtGcKGUeLISj0Tqyt+vpdz73lSeMu9v9
         an1lPE+OBQku76C7HnIW1qTK6Xc1RuhYro8iOwXAvbAUV0WVX3rSNm+EmcFAC5Fl2Dtw
         EsdSE5lpRFr2xKwD01JwLKfrwq55/US52DYBmlyYIv0twETH5VdlBuLw3DqHwHQlkUaJ
         gkiMJVg5MO5SO9VivmnZtoZMU7kPen3X1OYXsEoFwXJyB/JeREGcTHxEwSJgrJh767SO
         /jYqY2zL4kC6wcmqqSPR7xd5NSIXS0Zvk7HKwvP3SfDZVi2nV1JxpyAUWumbcOj2+T/t
         SK2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772221976; x=1772826776;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GV2vdzc/TRaF4f8dfG4rJXZ2LFeRYlnAduxU+Ay8fN4=;
        b=Q+sE5WLK9zGsqnNXEF/mhGv08PYuiAB3W8EpkpFb7KjITrsQ8Z9SEER4XHrfrDqNTs
         KM4ll+mRaU/sUSjKlTJfmtcU/md2cyO1HcIOKBEyJvK2TUhD7YCbfkTRphuN7r9VVJrk
         l+HRhCAqSCV3L53+n+xGbb9KT4sU9jJmdSnuGGryJ/SfT4e3ZRGHOweVyhAKQuqEFEjM
         smvL/Oqf5YQlrANLXdvlKCkUSpZV2sj706BXz86gd3OvuKlgAc13QfCenK0jNl7fy0bK
         KhnxPwvj/wmof8TGcsp+lXn4ykW8rVD2OXpbVodZFVTt/MWuIWDSenOtUkiqt8H4hW1y
         fxQA==
X-Forwarded-Encrypted: i=1; AJvYcCXJAiCOUZWTKpBqxu+PrFimLnTqHo9Fbi57nyDIRWlMpAxtlZ8vCxoI1mijjI6/yli3qBQCcAuImr59@vger.kernel.org
X-Gm-Message-State: AOJu0Yy24ER2ABXXuEZKph9gC/vLcqFkY2srKJS1rA3i8T5cbXZhA9Tp
	9g6RRFWD1AaNnRv9TQLOCWI1p52VIzH9i6XAubhr+yKqw/EOjW8yPtW9qCUzgSf25PhqjhiH7LP
	rYCT3A3ajeQl/hcAyG5SMSB9SCtvmFJu0zvskFqU8CzalmaNi1PLWqoHageat5oyz
X-Gm-Gg: ATEYQzwnNO5xXWiT4j21lD9kVjc8BVcdixmeWxa9O/O94FUhRycc7AxFgx8/9S9B8ns
	G4g1t9LQShgCAspWvL3gUxJamWS+WaqUVN1V8ZAGyA9THdo8DwfKRjLFjklpq8/etWzHGcoGdKi
	/g/mmhWDm6XaW/1vkHuJhrpfmYqzjOuOD2w69T5wf3dNc+K9/2k5RmsV5EgP03kriXyYdBZW4Fy
	y9qK03VZ/Bs5Keym9Z0oqHEhOSj56cA/n6Ctw73yZa9ZJIVQhFHvzapuEThfF+jRRZtHjv+1b6I
	yVJWSRkp0ZR9kifwHQAVrCEqMnC8M2LfTyLqIRtOwUGGlY55fLDO8odwBBsaIDeEcz6UUAaRjMC
	/7RI6xORhhKqHKORjCP+ABD3ZLJklH55Vf3vozw44IbBc6xpFy1meLnIi/00I2DS2gMy5g2SIkJ
	C57ThNxXvx+5W0QVvupKub2FVfb1EU2YSLkuE=
X-Received: by 2002:a05:620a:7087:b0:8c6:d343:79a4 with SMTP id af79cd13be357-8cbc8ef670amr482960685a.40.1772221976102;
        Fri, 27 Feb 2026 11:52:56 -0800 (PST)
X-Received: by 2002:a05:620a:7087:b0:8c6:d343:79a4 with SMTP id af79cd13be357-8cbc8ef670amr482956385a.40.1772221975562;
        Fri, 27 Feb 2026 11:52:55 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389f2f4b2b8sm15082771fa.8.2026.02.27.11.52.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 11:52:54 -0800 (PST)
Date: Fri, 27 Feb 2026 21:52:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v2 1/7] media: dt-bindings: qcom-kaanapali-iris: Add
 kaanapali video codec binding
Message-ID: <nen35eqhwbikt7jlpxn22hvur33chxibrbmzd6awo425i3mujf@f2cbncxpcatc>
References: <20260227-kaanapali-iris-v2-0-850043ac3933@oss.qualcomm.com>
 <20260227-kaanapali-iris-v2-1-850043ac3933@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260227-kaanapali-iris-v2-1-850043ac3933@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=bJIb4f+Z c=1 sm=1 tr=0 ts=69a1f619 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=NEAV23lmAAAA:8
 a=EUspDBNiAAAA:8 a=c5cdqb5w248ZMfMtUIkA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: sYHljQspXnyUTDMZP-Qi_zW3XCiGEz_Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDE3NCBTYWx0ZWRfX4Bfa/o2vLm01
 nJrhGKGsTap0sxYN1tSN56TjmPHWjFXx2lOYYRW7LsDN2pvQRSDmEjyM6nXUIRBB93op70RXmU8
 LVm2qxt2ma8Vtdp5V6tfBOFH/N8mHLyNJ1oCKMm01CiEE0LwDVxWMyh9PfNzrG0mWgPpBe+ngCT
 26EUDXwB4cGhyIl4VZ28bEsqUl0RfS/t+SlhTgXW3wZGSkcw+TOl+v+ush2i1XrWburM+cj+Yr1
 1PDTEvHTZyxLchvpkNfRoFW+0Y6yzouSqfDhwU+s7lZ8RJp25Ep4ykSGtChftBNh4z/V+VnuRgd
 N75cl/Lwmwb9eV7gXAFmWkPOHx0G7hQol7L1gBqLbOGOLdKY61IeZjN029+uExGtLvg8et5JX9g
 gK7OKmvDVXAYLrcuOx99qQOEEZumpsvKTKLybnMopuE2iz4HnYHBm9dH/fRGjra/l3wWbXJogpc
 EpizRUv803dj1+ti7Bg==
X-Proofpoint-GUID: sYHljQspXnyUTDMZP-Qi_zW3XCiGEz_Z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_04,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 adultscore=0 phishscore=0 suspectscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270174
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269409-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F2ACC1BD1F2
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 07:41:17PM +0530, Vikash Garodia wrote:
> Kaanapali SOC brings in the new generation of video IP i.e iris4. When
> compared to previous generation, iris3x, it has,
> - separate power domains for stream and pixel processing hardware blocks
>   (bse and vpp).
> - additional power domain for apv codec.
> - power domains for individual pipes (VPPx).
> - different clocks and reset lines.
> 
> iommu-map include all the different stream-ids which can be possibly
> generated by vpu4 hardware as below,
> bitstream stream from vcodec
> non-pixel stream from vcodec
> non-pixel stream from tensilica
> pixel stream from vcodec
> secure bitstream stream from vcodec
> secure non-pixel stream from vcodec
> secure non-pixel stream from tensilica
> secure pixel stream from vcodec
> firmware stream from tensilica (might be handled by the TZ / hyp)
> 
> This patch is depend on the below dt-schema patch.
> Link: https://github.com/devicetree-org/dt-schema/pull/184/changes/d341298d62805bc972dfba691da6b3b62aa3ff15
> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> ---
>  .../bindings/media/qcom,kaanapali-iris.yaml        | 261 +++++++++++++++++++++
>  include/dt-bindings/media/qcom,iris.h              |  18 ++
>  2 files changed, 279 insertions(+)
> 
> +
> +  iommu-map:
> +    description: |
> +        - bitstream stream from vcodec
> +        - non-pixel stream from vcodec
> +        - non-pixel stream from tensilica
> +        - pixel stream from vcodec
> +        - secure bitstream stream from vcodec
> +        - secure non-pixel stream from vcodec
> +        - secure non-pixel stream from tensilica
> +        - secure pixel stream from vcodec
> +        # firmware might be handled by the TZ / hyp
> +        - firmware stream from tensilica

Why are you providing description as a list rather than describing each
item separately? Then you wouldn't need maxItems.

> +    $ref: /schemas/types.yaml#/definitions/uint32-matrix
> +    items:
> +      $ref: '#/definitions/iommu-types'
> +      minItems: 5
> +    minItems: 8
> +    maxItems: 9
> +

-- 
With best wishes
Dmitry

