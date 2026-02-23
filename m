Return-Path: <devicetree+bounces-267662-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cEAMKjLSnGlLKwQAu9opvQ
	(envelope-from <devicetree+bounces-267662-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 23:18:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC23D17E288
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 23:18:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 57DD33043DB5
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 22:09:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40484377554;
	Mon, 23 Feb 2026 22:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UgEv0kpr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eQ2K/4CG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E90B33EBF10
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 22:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771884563; cv=none; b=KsX9gBPp855ZiGM2O1ya/A+F80i9d8Dghn1GfLIupsALl5n8mi70DFuqf6rVxV9IBHXhcrHFerA70tmtEx8EtghiOOOkLtywH+VlQ51+4j2MUoNBlR+WBUX2dWGVx/udankK3KrfBaoU6cc7cqc//jx8hT6sZbTan9/NDG5r69I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771884563; c=relaxed/simple;
	bh=bVyfsZLOK04a4Dxh8V86gVsSIRT+i3QdwGBR4OH1t3k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LJltQKbQRZjO+Poe9ewLV/TKhHQRED4otcz4S9Al0U3Z6WPqLW34/5ElZeHDTnApCSrXILkqPlCN4fG4TJ2417bueEF+QWMeUp0m/JODibT6cvYQnnLHXZ1JXeQpn4uXyMVXNzCLdx/0ZjEQCuM37NFFuqv5qltNXokoDyeQkHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UgEv0kpr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eQ2K/4CG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NKG5BJ3151782
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 22:09:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zIm2pvGtjQta7a3p4i083GC2
	Y4rWKB7jIV4INnw6vHg=; b=UgEv0kpr6PHVX2B1mhOg5FzDqEpX3tmJTJjcuIpy
	uB5ikuzRCY+Y7QM7jhkNnPjdKaYqrbsixz8JOGs6kDrvVSVGTVgcBPGeVzk2p+bH
	wH+ydRGkZtrz2khxzvsr7GDCTNbTwu/CgO7Wo0Ylyqgmi/qRIRHKAJnuT8qGLoIr
	cR33sApEWfuCC8o5o5Dv95DGM3iIAXT+cBHNvORqcL91dMb4hI/dR8H1Yp3FbUIz
	NYl27RgYyyMlbmdL090uqdBOIc4Uhn3ZwQCvCHqQoLZMuJYjfg2aYVmCAmhkviSN
	hTzGECIl4yKH5IVNBWQxCBlZFpfPThtHtYXiwDyR1HNO4A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgpj89sq8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 22:09:20 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70cff1da5so3762258385a.2
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 14:09:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771884560; x=1772489360; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zIm2pvGtjQta7a3p4i083GC2Y4rWKB7jIV4INnw6vHg=;
        b=eQ2K/4CGuFxNdO7bqL+kPphUTw4tviwt49/pDQH1RDi8BThGz0VNREfq7yL3Jo1E9f
         wSAe8JyagGsRob9KsxEVmlthBs+uSIK7KmOURkEw/WGjmCWiv2dE36+kLR8B7s7Rpg67
         CiYKzUCAPXhgPOcHmKkGFULXwIFAImjdep0QTwykGswrrP8QuX4w7fHe+h83pLVcvHCa
         nS3EoU2a94Zot1eNMzWZByA4mBPcYpiSW1PN6I+zG6Ec5lhAP2PsU0Ls5xaQb+M+8z/N
         OiB2fjokpwGyDU+iSsJG4wR5FZB75CYPg8mc44rX8rIddYJsHJjOrUp/4PxsBxjvqnH5
         cFKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771884560; x=1772489360;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zIm2pvGtjQta7a3p4i083GC2Y4rWKB7jIV4INnw6vHg=;
        b=ibateymeecEU4DoVy4fhjfkYhSVGhqHvoUW44f7kwv0vEkUda71xCNGYffOxIMcEDK
         0yCxbPxPPiCnEJfw13QSzY3BOcnd+s1BAExjNcahi47EfefuwpINOH8U71txe2jefTA/
         5Dhgz0Oz8Xn1RnMZXimjwpCZ2wz382+jGJeuXMsX9XzzvOk5PbgLGW77Ft2acVoJOg3Z
         sF6JNEsyUHBTR0n1WP5ydNaRimElepzNKOIhpSayWvI62xiW4AzbNgSZzE33UYLeOYv2
         AIZN7GeFs1nEuuoadrdaLVzshf1vwbgDS3uQauztyYZgcgFidpPbnqiIBB7FUQEFfPWJ
         Z0Eg==
X-Forwarded-Encrypted: i=1; AJvYcCUE+7w/1jL88KeGzYMY462jQQPflFZ53cD/28kcNu354MigToMsOpY7rLznmc5ZUbQQPE2jzsSpaWVj@vger.kernel.org
X-Gm-Message-State: AOJu0YyMDQ/ylQSNLsZ+bFSRwSLOiWo05Lzq+WT2T/0xEZQQTZAWWbpH
	Bgjk9ZDbioge4yFo/RgZ5nU6gjm47IlepgF1UzH5/U5XR+YvXrYFOgsFfjXWJMh8RPupnOpalvN
	GrTRti01F5EVwm+/FLsyqbmqXTf9g35OABvf4iVN+qbwm65ft44d5E3ZIOu17TEkE
X-Gm-Gg: AZuq6aIlKLyEWMZOvjz4f1lX06M0oixkX5CWrtKNSVXiP2mb3CMj3rIv6lIHC/O9kQc
	Lp/fDMPDlK0QkyGfSZEPBrG60wCUOXE4AcHYejFIHJZv/HskITqX4owf1eqPW41SkXcx43R+2uX
	AwYGf3MNF7ok85SmDRne+derHvozeBCIhZy5hA9NhHuP1mwJb85/h8iRKbLqLCSr5R7KesYbhZF
	mE2+dIFgtDqLy7JHMcASBsR/BLwehaPZYlUJhw/rUI25dlrTNepVxUXTdajQ9ZXn60udw3bW2Ir
	zS7xm2nYKQTNKQOK9apvnitSMa40SDLO0Civz+nXuEvpuxGsV1mR8bH3OMJDydsJnQUmYDwY7e9
	jjyb88QolQyr/7H2iPC8eu5Rw8sLAxyL5KFomVhTsl+NfJfynzAHc0Q/f5yu008+EO4Rh0wKgBD
	lPJEzBmq/U6nAgwzVQYU0i03nMDCQlijLbG00=
X-Received: by 2002:a05:620a:4495:b0:8cb:49e8:d460 with SMTP id af79cd13be357-8cb8c9cde0amr1252365685a.5.1771884560183;
        Mon, 23 Feb 2026 14:09:20 -0800 (PST)
X-Received: by 2002:a05:620a:4495:b0:8cb:49e8:d460 with SMTP id af79cd13be357-8cb8c9cde0amr1252361585a.5.1771884559628;
        Mon, 23 Feb 2026 14:09:19 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb3e8f5sm1816684e87.54.2026.02.23.14.09.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 14:09:18 -0800 (PST)
Date: Tue, 24 Feb 2026 00:09:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Umang Chheda <umang.chheda@oss.qualcomm.com>, konradybcio@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        richardcochran@gmail.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        mohd.anwar@oss.qualcomm.com, krishna.chundru@oss.qualcomm.com,
        monish.chunara@oss.qualcomm.com
Subject: Re: [PATCH v2 1/1] arm64: dts: qcom: monaco-evk: Add Interface Plus
 Mezzanine
Message-ID: <2pcw4qrgxu2fwhssyf3plu6h4anwiofvdx3ppnfbngibfm5lxz@7ixcrh5jk4t3>
References: <20260222173545.3627478-1-umang.chheda@oss.qualcomm.com>
 <20260222173545.3627478-2-umang.chheda@oss.qualcomm.com>
 <a7777e5d-f9be-43c5-9f3f-4d84e16f6e89@kernel.org>
 <jncbztn4xohzns734i4o2hsherdshjgxqtiglh7zf2oz7nkujs@an24wf3txymy>
 <87e3de23-cee9-4789-87ca-e85826af7760@kernel.org>
 <sf4jvwou4wtlxamwgkwb5c7adujz6dwoqwws2aq4z7jjvblbvm@fb5kqkt23ktm>
 <a3b01ad0-faf3-480e-9320-db7b7c426a3b@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a3b01ad0-faf3-480e-9320-db7b7c426a3b@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE5MyBTYWx0ZWRfX6Ny+hzbLMGQk
 kAdIZIOf3z1sfYMv5A2w5SME+3B9RTRHbpVTi9k74fsMBjeIInv6meEFCYi5cosnWzpPLqYNzo9
 GpiAvShWU6TshEAyjIDMQkZE28OeD17Rbe03EvcMSFcnZs/A8qlb9zQgOWgYINf/l84Nh8coQOY
 0yC5uyPuye2CuBUnN+yY+HoPamhUVcr6/OmwhF9GFOjyBu8OQwtRBgE0ljpE0TsgB98pjevLley
 A4M0FqfF/HOk9J98hRFn4KC7sfOXgWxslcpGyMmKfwTJtWhffIx59w5ztgEWTk8yalBBQeG562a
 J80tM6SxV5LQtce5e6Q/suT5gt9HljJwx4aXRLkfctrvqlB030OHWlvPlL2E2ZQEUl+OVbDRYn6
 lIV7crqGstdNQpGha+/H+flu1au45wLF1AuayeLgmi/MxEn2yKWKw69eBqEbfxm/A1ByA9luGla
 S/WHyyQVzm8xoEJkWVw==
X-Proofpoint-GUID: ToDix0KazGTOxnllkiUgaWazW0El64q8
X-Authority-Analysis: v=2.4 cv=Z5Lh3XRA c=1 sm=1 tr=0 ts=699cd010 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=rPpstBZ-2qTAgRT34u8A:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: ToDix0KazGTOxnllkiUgaWazW0El64q8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_05,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0
 priorityscore=1501 phishscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230193
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267662-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CC23D17E288
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 09:37:53PM +0100, Krzysztof Kozlowski wrote:
> On 23/02/2026 20:02, Dmitry Baryshkov wrote:
> >>>
> >>> So I presume what you're saying is that we should at most declare one
> >>> level of non-controlled fixed regulators?
> >>
> >> In general, non-controller fixed regulators should not be there at all,
> >> except when they serve certain purpose, like fulfill the binding
> >> requirement. It's their only point.
> >>
> >> And a chain of:
> >>
> >> A -> B -> C -> device
> >>
> >> is completely redundant if all A+B+C are non-controlled.
> > 
> > I think that came from me. I don't consider that to be completely
> > redundant. It helps in reviews and in some understanding of the board
> > logic. I'm not asking to implement all the intermediate regulators, but
> > to implement the meaningful relationship between end-user regulators.
> 
> These are not end-user regulators. These are fixed things which no one
> touches and no one needs. There is no single purpose for user-space to
> see them.
> 
> Why do you not insist on defining all of such external oscilators, rest
> of regulators, all possible little ICs?

So, where is the boundary from you point of view? Do we define fixed
regulators powering DRM bridges / USB hubs and other similar devices?
Or do we do it only if the bindings require us to do it?


-- 
With best wishes
Dmitry

