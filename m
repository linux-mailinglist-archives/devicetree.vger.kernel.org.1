Return-Path: <devicetree+bounces-267196-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PtpAXt3m2mzzwMAu9opvQ
	(envelope-from <devicetree+bounces-267196-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 22:39:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E5D1707A7
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 22:39:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 658A0300EFAB
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 21:38:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0E9935BDD9;
	Sun, 22 Feb 2026 21:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NwZwDNKP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="R93tn3x2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A568235B62B
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 21:38:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771796331; cv=none; b=NKiMQdc08SIzJ6qGHy8hFmJU+ScXgBkq58jLfyxCYglcbkSQHl0jEBho9A9DYfD6eRK+3Z94nnQVM6Tukf+CmSE5wKyaCxXYIvdarbnyzDVx0EbniNuxI5/xg7yZuuZCAEjKmedwnTKppCE/yL8pYEe7XCJwKUavU7b3sdCHWYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771796331; c=relaxed/simple;
	bh=gbR77n2bq9x6IJj/6stati7Nk1OGABpmSyjz4Gq+OKY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=duQVKcFu42zDlI4kfdpQEP1t8RUu9Ee98rrU9/Ndv3aL7bqOglNBF/vbb5+/s6Xc80FhZAMKZXeIjdrburGYE5mGumdFfgdLS2ab4XisHrR/+yG6aURKBlrlQWB/V9kTpZsQZ/JurYuC/VsmcGLJ+C2CEMu5pZcvzjF4WZ3VuF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NwZwDNKP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=R93tn3x2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MLFAZc2080266
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 21:38:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TKAnvBRGucOf46HRe/CFA4BB
	VnTDUac7nLnyWFQ1vdY=; b=NwZwDNKPBrt5B7YoRehV5x+FNT1N5NO2Qzk1ckMm
	F8G1htGgqsvpwbO9khe0NGWKxiIyqU1CE8LZeBUXrsVvxcoV8lnJJl1TR/EdxMZz
	WTsv0r7Zi3BgzjuT0w1mfyJBnnJ8UwZk3I9xtAK9wAWjKFF6XfA8jXF66XKcYatP
	F4O5JJYIbwHzXPYB8tpyNK1ESJw2WeV8yGdEiVGqghM/2eOFWlX9fm7RiRfnB7bw
	j41/UsRhnpBLhDtMOr8Htka4TSBpblfTqfmGktawxqlZ9gyu4tp8EuQ8B7n6qirz
	XHORv253eudbhzyLSIHfUkfuYKEpQO/WF+SzGqA19tSWLg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5v3tr1k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 21:38:49 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8ca3ef536ddso4572509085a.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 13:38:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771796329; x=1772401129; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TKAnvBRGucOf46HRe/CFA4BBVnTDUac7nLnyWFQ1vdY=;
        b=R93tn3x2bydt1tiLpYd42VkQj4gfCjuGrc0h0MD4uPI5WajZWWLU7uQU0aJ8JmyMYi
         qi5TwiOPKJPYcdsbXcgDlCmYnilfaIhQ6LoPcDxWsx46Lrt8wTr6p/QtZXKc29ql/dBi
         1+GVpwGMr11s8mFQgfzVulSstxBSFB4D4J0hjV9bFQUPLx9w/5/cLz3YzNCZfj4AOLAu
         reRQ9ZItVX45/WiE/orv4jcSkzBuFAg6zmK1FVv8XeYDkySfQr5ifK3bnzo/PjVCgHd9
         nON6kdN2P+uUi/zf8CZ/GIuGSWcGsr6rp/t7gsr2GrbcEfXGgsTYnvsKgY7w5GHNhvR/
         KM/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771796329; x=1772401129;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TKAnvBRGucOf46HRe/CFA4BBVnTDUac7nLnyWFQ1vdY=;
        b=RZ9vglkIXNBC66C0QYMMc0PH+t5eCY9BWOUTDEu4mie6exShq4xnXVh+IVcw7eBQeZ
         4QSQWDS7nozNAqg4iALbvg1xh8+LWmFT2S1L9H4WVqxid0VCTNtUTS07iGMLf/cLxXcb
         hWdKSrK1ueuD4LdgRM9L9iwDDdXcJpu6kRlOxAOZ075pGqQEjSHnn3SLxOClSzK867i6
         H4FVGUmZORm9C0LHEy004pKRDOuUALibRmK6PMhBsb9bOXwioXVBN+8fxS5GdWi/T7n/
         Ji+t1SOCUtsi2GJS4NYgSmrT4Rc8oMWuN26NO1uwPh3+DYbKeG6a70eQHtj6EbGB1sv/
         LoCQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1VU+f/Bmgvxwmy4f7G7r0/Z+dqsxZTWgfXPCLYonWmxvrUYjkFm+QZOcYIbPGGQuzhpgZBNyJWw4s@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7D8FdKufRZ2w0WO3x71clg5gNcyY1TPlNKVmCtQdfIHC2Rhq+
	uC28zKnujoTthildVgWS8LLfvzDM4YIpwRgBV8UKAfV1sovb0KF1jFDamouy1uWWYtIkDIJ3CEN
	wPyGjybZW0QpnuHtLNF297bl18imh6EMhDCD4/5OvCTxx3gEjgNaTvHbeoQmNRkfy
X-Gm-Gg: AZuq6aKu1fBXfoofosZMGROFs3PZ2UYj0PUFqJgo+gj6/zujuJgYKQfkCAEuYoCSdPl
	pF5HVQ+SIDjJcjaXSx6jSWyajDtUFyW2lNw6FM9KLybzHb6IVSX1Zus2cVkyBzIQpDRNooozppS
	DYJaIWsQPIbSkZGW4zf8f1ihI/wMoDPk+TRrrNGTOFpJo4dnC9eOl8e5vnWqcxVB/kBtL726i9T
	+rOHbDo26txKu9z6yJOxPxnfijeJLUUazuDQnuC6aVorGfI6kir2clUIt5vTtJeo+oLCVuZPz6S
	z/ZB48WirlWa40zlyx22zSQ9CyDzjYAkaAN1GPF5mQBjPz00nmJn62Sj8b7qe4au8C/697eGCtv
	+xf40dbInpvDMLVHxjpUH4IlnFCul0vT+LZdHmoJ1iMnQTBnDJR1/CIslCZk4AqZ6KJRgXIO3il
	/WOMEF4lRUsqv48Uunx0XakLpEwgT8uY5iL00=
X-Received: by 2002:a05:620a:19a5:b0:8c9:ea1c:f216 with SMTP id af79cd13be357-8cb8c9cbc63mr787344785a.14.1771796328995;
        Sun, 22 Feb 2026 13:38:48 -0800 (PST)
X-Received: by 2002:a05:620a:19a5:b0:8c9:ea1c:f216 with SMTP id af79cd13be357-8cb8c9cbc63mr787342885a.14.1771796328546;
        Sun, 22 Feb 2026 13:38:48 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389a7a9023esm11132051fa.35.2026.02.22.13.38.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 13:38:46 -0800 (PST)
Date: Sun, 22 Feb 2026 23:38:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v8 2/4] arm64: defconfig: Enable configs for Qualcomm
 Glymur SoC
Message-ID: <xzehpt4qtadsjxunqv2ysqzhd6motanroe2rft2xvo5kf7x3d2@4iums73jzg23>
References: <20260219-upstream_v3_glymur_introduction-v8-0-8ce4e489ebb6@oss.qualcomm.com>
 <20260219-upstream_v3_glymur_introduction-v8-2-8ce4e489ebb6@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260219-upstream_v3_glymur_introduction-v8-2-8ce4e489ebb6@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=YL6SCBGx c=1 sm=1 tr=0 ts=699b7769 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=8NWDcoBcKMlp1gHdEIYA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: zzG_nLmo2BrTPW_Rl2d68_PY3O9na7Vn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIyMDIwNyBTYWx0ZWRfX5sffd87Bnuuz
 yjl0k4ca1I/iUSzjA3KCJym1u/peZUmBsEgyqauXy8rd3arMJVkyjovlXhp/K/0ocCkW9msLBMZ
 JXm+/rQq5oIjF3vUB94XOhSf7za5PJEaFsckxDJANbKvZc+dibUfL2fUT073dR05kgjSFBDBXlS
 8f9rsZJa9gTmJO415SwzaPXpsueC3H8dc15vaD63ngpAL3cBmwgXY0iTR8wFLeBoyQYLtDec/GR
 DTYIo0WkY8d9veP9a5s6Fcpv9uCxe4+KVRoO5Hgbpb1/PGvUwB3JT+Z9L9TqGhn+omju0iCwc1i
 Uv0Jdkr3aDQMRGHpIdnHHn8rymWwahiT9BP9Wf1r40nlg3MtfJYUc+7T1GXb3d/5L9CTUQw6ndB
 +LUFQ59zeKWPBHxkod53EirIt5xDbW05F10FcysyMdaDgA9fY0RMD5Hb6t793nKsTk5hcEHUSDt
 tcl87IZKYHi4/DcThuQ==
X-Proofpoint-GUID: zzG_nLmo2BrTPW_Rl2d68_PY3O9na7Vn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-22_05,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0 phishscore=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602220207
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267196-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A4E5D1707A7
X-Rspamd-Action: no action

On Thu, Feb 19, 2026 at 06:53:27PM +0530, Pankaj Patil wrote:
> Enable pinctrl, clocks and interconnect drivers as built-in
> in order for serial console to be available before kernel
> reaches "init" on Qualcomm Glymur CRD.
> Additionally, booting rootfs from NVMe requires TCSRCC to
> be enabled as module
> Enable dispcc as module which is a dependency for display enablement
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  arch/arm64/configs/defconfig | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

