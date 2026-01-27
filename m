Return-Path: <devicetree+bounces-259727-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDr0GABMeGkipQEAu9opvQ
	(envelope-from <devicetree+bounces-259727-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 06:24:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B2F901B7
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 06:24:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B34BF3013AA4
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 05:24:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 290FA329E4B;
	Tue, 27 Jan 2026 05:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LEIyc1q5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CULRNVHt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A0832D3A75
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 05:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.168.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769491443; cv=pass; b=QgC6pxeivjmZOKURFNDEEVbFfHAy/psM/Do/DVdM+z2pI/Dx0P5FC2zRErxQPg57rSpb14c2JQEz70X0nu4jjkwsow043iMfe7hSrJIIxBVffFuO82hZAKspgwwD6CAmHiogK89xtTn1Q7uf0mlgrYx3fwljvQOk7CdwjsoVqhs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769491443; c=relaxed/simple;
	bh=5ZlTeowz3mTvEpFuyPP/h5cAPT1w+3Lo6jgfjO0QgW4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u9YqaYg3g1Izz9p8oucoonBTAuRtXoP2IOrtpIvib8wwTvNWBXEFGIyMMfckmqfyLg2FqPzVxEHcYeBJVE+dBAQAYpzhhh/IW7zBoRtEDzLcAEj9yqcEo3DIBLY72Zk57aphV8eCg43HXteFWDyDSPiF2ecnzuwnDWKw/FESSNw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LEIyc1q5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CULRNVHt; arc=pass smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R4UBBV171530
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 05:24:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	65Dr++7k9piqDeeF3/jJFpw99hTaSa0WRcxnBV8/P6c=; b=LEIyc1q53oZymJgs
	GxHSC8vEmspOAgK7Vr5GXoWWoU7wlbRT4055J+H+sJOE0rCwsl0VCgbdU8rCUW59
	1FAtufAXt9EDY91YmUM4FqUbpknj13QlFK39TFVoDTxv06VNua65P0C6e7P+YZjj
	CgjtFOqhpr/Gu63/0Nfg5jKzYdqvIuorcPNJAnTU75GnZ00wGT+Rh/jb7ECLOMTE
	Fw3O2k2PPB9UpUZNp2njv+BqbJzRZ/H4ktSy6PkvQePDkQanuTNRJGUFPJMt4lmx
	eLVlOigLGYrXy9l2lnV6/rEeZ+4/1cn0y3sKUmE9Gljl6JUO5/rRlhKuxu4RjdKW
	fjofwg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxf3a1a83-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 05:23:59 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88a344b86f7so196229636d6.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 21:23:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769491439; cv=none;
        d=google.com; s=arc-20240605;
        b=fJe72X2f3bnHcxAbG9SDAvloEERYBshNKDG2ey88RFVT0ui/3Tx/uW1gAQrsw0y0GG
         FmwFhDBNhUI4OQRtdXCR9kTgubCmlq8kgnhvENnk6d1iy78N3uuaBFtE5278LKy/Bbld
         3MPxeBQsGg4MPb+aDh8so9OnH3PzcYpJOAx+bpVZXM0z1lwr5EYnlYNRZEKSA37oiz6N
         Cgm6s2xkzJWW0UGXk4JTYVYBP9NqShT1Thg9Dq7PFiENrpVuhNQmi42z1XIyiOeahagh
         bgXGj10dlKbbqokH2s8ybgeN7StrBMQRDDdnhRC+1n/xJNrcV/2HERz9/VDPMD0Zj5n6
         kvqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=65Dr++7k9piqDeeF3/jJFpw99hTaSa0WRcxnBV8/P6c=;
        fh=o5V9vZ2+50zKrx776sUboa9D8TNtzWdwbcA7o5JqPJE=;
        b=eDxUEEw99sOlR2/4ioLihTQrai9+NXGev8WWJ0r+JsUJwwo16hOI3svRQyaBFkfyHf
         z9nHItYHG6XuN+N52PdBumPZDjVu1zkhaBiaHHAqo6yXHoARidOcOl3S7Y+hR+avp+x7
         RuhW8gSsKHyBmoRbrYpGBsNxqtbRDen0oRE7GAlR5GkI+WvK8UjdcxzMqxA2gsEfDv0w
         El9+R4Tf/Yd/wR6pAahun9fjEQTRknyJnXjjndrwB2p5D/7a0WKHMLWChBJoirjthac3
         9KAkLttIVofFwJgBfIcU/AquXemevTfP9aF53cyuRFA1B39BZ3aBGgatZavWkwiDM0gt
         MPtQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769491439; x=1770096239; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=65Dr++7k9piqDeeF3/jJFpw99hTaSa0WRcxnBV8/P6c=;
        b=CULRNVHtCT2fmbgKO0/iYf3gmLynffdZdtHc8o7BruwFAriYt5YIJAyQq1Nz6s+IxZ
         8tYx3J241tbSwcY8E4lUTN2nBhERk4n/IH8Ict07pd0VLUqm9xe8L+k7h+ahkEU9bVbS
         zFQJ0+biYWob8mBfGtFhh49zC7j8ZyXCLqO55/k2WT0lOYIxlnYksymV1ln6HkMbRCQ6
         rjQyCColJBNP3X6DYGWpdWtjwAsWRJOIFOwntNNGA9n5Mv7WfZBxOglC3dOHucu7wRv9
         LXCe7x+34mRYMujXfIlFePq932wrpxGCwq4FRq27gemr4M+v3Lp7Gng9bUGIK7FGWGTZ
         KJag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769491439; x=1770096239;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=65Dr++7k9piqDeeF3/jJFpw99hTaSa0WRcxnBV8/P6c=;
        b=vUxpqa8qbI1T5MvALmNVHXrcrFazJKSENzIMoAsY6vxADhUygrgB1lyC47ETvKk+1j
         bjaoTTywkak0tt6ULjGdS+NQVJhAVXQj6B+S7ehlR4/yk9xTmHHcWJLNRecbfctElEFA
         E947gCbrIw/irn0Wnf+13X0FWblM0UdPi7h9LwpxFxFudXxeGArPvofJyWtOrkJNSm4D
         j2ACW8DaVsCgOg+3RvVrC5rhvN5HUduQqj3l8L1T4BIXbPQ1FtyLn8iqA9rDrSi7oOek
         v27/d4Tle2FxexeCe/eAgSiD2SbFJFaektaX3Y52l9+F5qO6MNeXUksdTw8Ng08AUKAL
         fjhQ==
X-Forwarded-Encrypted: i=1; AJvYcCUE6YhdQgQhgSiAf+ZwgEh4Nf5aen+fjzqIst1IfpCAJAW7Fm3VOqvj87VCtGLG/+NrY30F+R9It4hE@vger.kernel.org
X-Gm-Message-State: AOJu0YxoZk8leL05CoM1UmyDnnspulyjaeeSjnyCuZn57ZYhS7IjApX3
	CXH5WdkNmfw8QBjbH7ms0kSLTRdrIXJKHFHrCbZSGaxKoogkWKSASgVQzlCVheogHnTEctT4T2I
	N6mHsc08VElbLCf1W91niC6bN2KbjYIttwwcQG7IdQ13cirL6yNaP7Qo1SuBS9oa2gNonOkIyTY
	jtnrz5cO8I1t7otbLOTEM02uZoKF5zGzD8WCMO3iA=
X-Gm-Gg: AZuq6aJl7Ks4+WE6D4pwNa6BI+F7Vjj4gjoaJJcKyJj+fumJXRkqv4CPwW8Md0O3tLx
	RPn/GRnjKQKxuCyhsUd48lN3e+dCH/wj4I1/jbBZlksBoBIIQU1FBgRI7fkbXIqvJZYxGDxTS/7
	no0OFWVTuUfhPSMRUF1NNWdA5HVeQWTXAGLM6ioLrhHSKbphCxpB7Yo2MVKR3yKNvADP2H
X-Received: by 2002:a05:620a:1a25:b0:8b2:e346:de72 with SMTP id af79cd13be357-8c70b8f27dcmr65743385a.57.1769491438747;
        Mon, 26 Jan 2026 21:23:58 -0800 (PST)
X-Received: by 2002:a05:620a:1a25:b0:8b2:e346:de72 with SMTP id
 af79cd13be357-8c70b8f27dcmr65740285a.57.1769491438241; Mon, 26 Jan 2026
 21:23:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260122092852.887624-1-swati.agarwal@oss.qualcomm.com>
 <20260122092852.887624-5-swati.agarwal@oss.qualcomm.com> <63fjxtcmpbpna4cuuis332y3p52b6pvh43gyg6m7u5kiwkb2pb@znwfyet4xlpc>
In-Reply-To: <63fjxtcmpbpna4cuuis332y3p52b6pvh43gyg6m7u5kiwkb2pb@znwfyet4xlpc>
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 10:53:46 +0530
X-Gm-Features: AZwV_Qg9D9OqySXSR2jfxBJ3tC1_VxJSXb3-ILFt4f7DklcV5aYmk8s-xW6NZ78
Message-ID: <CAHz4bYuR_LZXh=tS2FJ4VE9tVB6vN10pd-9i=uOL35sSx_BRzg@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: lemans-evk: Enable secondary USB
 controller in host mode
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Stephen Boyd <swboyd@chromium.org>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        =?UTF-8?B?SiAuIE5ldXNjaMOkZmVy?= <j.ne@posteo.net>,
        Pin-yen Lin <treapking@chromium.org>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA0MiBTYWx0ZWRfXzm9vwNQsdzG/
 oK65bSHK7/rY9wQFeqa8A084UaCHsFeAcylq/b8ozW9I5XhYs/a68wkH4rGXxtjQ7XwforQbS38
 I/fp2HLmD9VVw29B0iaGpN+LcFgKlTkdF0OtdrpyZAsE9TbzNnlbM89xIFvvb2NQjVZtqVteaTk
 o3V2a/AHkhxzxtYu0nGSGJauMF/nYtYdtl+ZZcubG0hic+tvQ+z2EbAQCwjRQau5bcjOIx09nal
 nrYw/o8hZBtyCJ3QWKsN0OUP2RaArfTrVUrSz54kcqnJd5Mw2SRGd1emmpS860d00K1tO8iPCRM
 kcJKxpomm6BWWGRM+pU3/iqNIT7iXW2O36Ac2ok5plx62JEuzCNtFFvShOZ0XCcx3pSViSqIdnw
 IMiEOTcYRpFBchGNCaTOYu2D86Ahzzq5uVm3XVCNYBhFzq3zaXYAAe6HUpheIl5Do7Xpr4c0nPD
 CbgNZMNbVs1igb3eaGQ==
X-Proofpoint-ORIG-GUID: ahAi-jKvLx2rBoFDWKNQ_dO8_xTHMi1j
X-Proofpoint-GUID: ahAi-jKvLx2rBoFDWKNQ_dO8_xTHMi1j
X-Authority-Analysis: v=2.4 cv=a6k9NESF c=1 sm=1 tr=0 ts=69784bef cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=fSljc-vNTktiGYv43x4A:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_01,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270042
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259727-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.1:email,0.0.0.4:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.3:email,qualcomm.com:email,qualcomm.com:dkim,0.0.0.47:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.2:email,0.0.0.0:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 01B2F901B7
X-Rspamd-Action: no action

On Thu, Jan 22, 2026 at 4:02=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Thu, Jan 22, 2026 at 02:58:52PM +0530, Swati Agarwal wrote:
> > Enable secondary USB controller in host mode on lemans EVK Platform.
> >
> > Secondary USB controller is connected to a Genesys Logic USB HUB GL3590
> > having 4 ports. The ports of hub that are present on lemans EVK standal=
one
> > board are used as follows:-
> > 1) port-1 is connected to HD3SS3220 Type-C port controller.
> > 2) port-4 is used for the M.2 E key on corekit. Standard core kit uses =
UART
> > for Bluetooth. This port is to be used only if user optionally replaces=
 the
> > WiFi card with the NFA765 chip which uses USB for Bluetooth.
> >
> > Remaining 2 ports will become functional when the interface plus mezzan=
ine
> > board is stacked on top of corekit:
> >
> > 3) port-2 is connected to another hub which is present on the mezz thro=
ugh
> > which 4 type-A ports are connected.
> > 4) port-3 is used for the M.2 B key for a 5G card when the mezz is
> > connected.
> >
> > Mark the second USB controller as host only capable and add the HD3SS32=
20
> > Type-C port controller along with Type-c connector for controlling vbus
> > supply.
> >
> > Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/lemans-evk.dts | 208 ++++++++++++++++++++++++
> >  1 file changed, 208 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/=
dts/qcom/lemans-evk.dts
> > index 074a1edd0334..a549f7fe53a1 100644
> > --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > @@ -68,6 +68,45 @@ usb0_con_ss_ep: endpoint {
> >               };
> >       };
> >
> > +     connector-1 {
> > +             compatible =3D "usb-c-connector";
> > +             label =3D "USB1-Type-C";
> > +             data-role =3D "host";
> > +             power-role =3D "source";
> > +
> > +             vbus-supply =3D <&vbus_supply_regulator_1>;
> > +
> > +             ports {
> > +                     #address-cells =3D <1>;
> > +                     #size-cells =3D <0>;
> > +
> > +                     port@0 {
> > +                             reg =3D <0>;
> > +
> > +                             usb1_con_ss_ep: endpoint {
>
> This contradicts USB-C connector bindings. Why?
>
> > +                                     remote-endpoint =3D <&hd3ss3220_1=
_in_ep>;
> > +                             };
> > +                     };
> > +
> > +                     port@1 {
> > +                             reg =3D <1>;
> > +
> > +                             usb1_hs_in: endpoint {
> > +                                     remote-endpoint =3D <&usb_hub_2_1=
>;
> > +                             };
> > +
> > +                     };
> > +
> > +                     port@2 {
> > +                             reg =3D <2>;
> > +
> > +                             usb1_ss_in: endpoint {
>
> port@2 is for the SBU signals. It can't be connected to the hub.
>
> > +                                     remote-endpoint =3D <&usb_hub_3_1=
>;
> > +                             };
> > +                     };
> > +             };
> > +     };
> > +
> >       edp0-connector {
> >               compatible =3D "dp-connector";
> >               label =3D "EDP0";
> > @@ -141,6 +180,16 @@ vbus_supply_regulator_0: regulator-vbus-supply-0 {
> >               enable-active-high;
> >       };
> >
> > +     vbus_supply_regulator_1: regulator-vbus-supply-1 {
> > +             compatible =3D "regulator-fixed";
> > +             regulator-name =3D "vbus_supply_1";
> > +             gpio =3D <&expander1 3 GPIO_ACTIVE_HIGH>;
> > +             regulator-min-microvolt =3D <5000000>;
> > +             regulator-max-microvolt =3D <5000000>;
> > +             regulator-boot-on;
> > +             enable-active-high;
> > +     };
> > +
> >       vmmc_sdc: regulator-vmmc-sdc {
> >               compatible =3D "regulator-fixed";
> >
> > @@ -536,6 +585,39 @@ hd3ss3220_0_out_ep: endpoint {
> >                       };
> >               };
> >       };
> > +
> > +     usb-typec@47 {
> > +             compatible =3D "ti,hd3ss3220";
> > +             reg =3D <0x47>;
> > +
> > +             interrupts-extended =3D <&pmm8654au_2_gpios 6 IRQ_TYPE_ED=
GE_FALLING>;
> > +
> > +             id-gpios =3D <&tlmm 51 GPIO_ACTIVE_HIGH>;
> > +
> > +             pinctrl-0 =3D <&usb1_id>, <&usb1_intr>;
> > +             pinctrl-names =3D "default";
> > +
> > +             ports {
> > +                     #address-cells =3D <1>;
> > +                     #size-cells =3D <0>;
> > +
> > +                     port@0 {
> > +                             reg =3D <0>;
> > +
> > +                             hd3ss3220_1_in_ep: endpoint {
> > +                                     remote-endpoint =3D <&usb1_con_ss=
_ep>;
> > +                             };
> > +                     };
> > +
> > +                     port@1 {
> > +                             reg =3D <1>;
> > +
> > +                             hd3ss3220_1_out_ep: endpoint {
> > +                             };
>
> Why is this port disconnected? It it really N/C?

Hi Dmitry,

Sorry for the confusion, Can we do it as follows:

hub:                    Hd3ss3220   typec-connector

usb_hub_2_1 <-> port@1       port@1 <-> empty
usb_hub_3_1 <-> port@2       port@2 <-> <empty>
                             port@0 <-> port@0

Regards,
Swati
>
> > +                     };
> > +             };
> > +     };
> > +
> >  };
> >
> >  &i2c18 {
> > @@ -699,6 +781,14 @@ usb0_intr_state: usb0-intr-state {
> >               bias-pull-up;
> >               power-source =3D <0>;
> >       };
> > +
> > +     usb1_intr: usb1-intr-state {
> > +             pins =3D "gpio6";
> > +             function =3D "normal";
> > +             input-enable;
> > +             bias-pull-up;
> > +             power-source =3D <0>;
> > +     };
> >  };
> >
> >  &qup_i2c19_default {
> > @@ -868,6 +958,12 @@ usb_id: usb-id-state {
> >               function =3D "gpio";
> >               bias-pull-up;
> >       };
> > +
> > +     usb1_id: usb1-id-state {
> > +             pins =3D "gpio51";
> > +             function =3D "gpio";
> > +             bias-pull-up;
> > +     };
> >  };
> >
> >  &uart10 {
> > @@ -922,6 +1018,118 @@ &usb_0_qmpphy {
> >       status =3D "okay";
> >  };
> >
> > +&usb_1 {
> > +     dr_mode =3D "host";
> > +
> > +     #address-cells =3D <1>;
> > +     #size-cells =3D <0>;
> > +
> > +     status =3D "okay";
> > +
> > +     usb_hub_2_x: hub@1 {
> > +             compatible =3D "usb5e3,610";
> > +             reg =3D <1>;
> > +
> > +             peer-hub =3D <&usb_hub_3_x>;
> > +
> > +             ports {
> > +                     #address-cells =3D <1>;
> > +                     #size-cells =3D <0>;
> > +
> > +                     port@1 {
> > +                             reg =3D <1>;
> > +
> > +                             usb_hub_2_1: endpoint {
> > +                                     remote-endpoint =3D <&usb1_hs_in>=
;
> > +                             };
> > +                     };
> > +
> > +                     /*
> > +                      * Port-2 and port-3 are not connected to anythin=
g on corekit.
>
> I thought that they are routed to the HS connectors. Are they not?
>
> > +                      */
> > +                     port@2 {
> > +                             reg =3D <2>;
> > +
> > +                             usb_hub_2_2: endpoint {
> > +                             };
> > +                     };
> > +
> > +                     port@3 {
> > +                             reg =3D <3>;
> > +
> > +                             usb_hub_2_3: endpoint {
> > +                             };
> > +                     };
> > +
> > +                     /*
> > +                      * Port-4 is connected to M.2 E key connector on =
corekit.
> > +                      */
> > +                     port@4 {
> > +                             reg =3D <4>;
> > +
> > +                             usb_hub_2_4: endpoint {
> > +                             };
> > +                     };
> > +             };
> > +     };
> > +
> > +     usb_hub_3_x: hub@2 {
> > +             compatible =3D "usb5e3,625";
> > +             reg =3D <2>;
> > +
> > +             peer-hub =3D <&usb_hub_2_x>;
> > +
> > +             ports {
> > +                     #address-cells =3D <1>;
> > +                     #size-cells =3D <0>;
> > +
> > +                     port@1 {
> > +                             reg =3D <1>;
> > +
> > +                             usb_hub_3_1: endpoint {
> > +                                     remote-endpoint =3D <&usb1_ss_in>=
;
> > +                             };
> > +                     };
> > +
> > +                     port@2 {
> > +                             reg =3D <2>;
> > +
> > +                             usb_hub_3_2: endpoint {
> > +                             };
> > +                     };
> > +
> > +                     port@3 {
> > +                             reg =3D <3>;
> > +
> > +                             usb_hub_3_3: endpoint {
> > +                             };
> > +                     };
> > +
> > +                     port@4 {
> > +                             reg =3D <4>;
> > +
> > +                             usb_hub_3_4: endpoint {
> > +                             };
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&usb_1_hsphy {
> > +     vdda-pll-supply =3D <&vreg_l7a>;
> > +     vdda18-supply =3D <&vreg_l6c>;
> > +     vdda33-supply =3D <&vreg_l9a>;
> > +
> > +     status =3D "okay";
> > +};
> > +
> > +&usb_1_qmpphy {
> > +     vdda-phy-supply =3D <&vreg_l1c>;
> > +     vdda-pll-supply =3D <&vreg_l7a>;
> > +
> > +     status =3D "okay";
> > +};
> > +
> >  &xo_board_clk {
> >       clock-frequency =3D <38400000>;
> >  };
> > --
> > 2.34.1
> >
>
> --
> With best wishes
> Dmitry

