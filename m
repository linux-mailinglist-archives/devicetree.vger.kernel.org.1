Return-Path: <devicetree+bounces-268397-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Ie0CEUDn2mZYgQAu9opvQ
	(envelope-from <devicetree+bounces-268397-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:12:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 872D419889B
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:12:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 864313020FF9
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 14:12:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41CD13D333B;
	Wed, 25 Feb 2026 14:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zvdmcl6Q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a10FeysW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BAE3D3328
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 14:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772028734; cv=none; b=K9Wc7H321prp381P6iA072WNXd8L1Z7XYQPDkTBhef3pMJzU9xsMG/cBrwsq0FjRxGHHeZfTeKbyPMARTombmgWRmCZ0XZtW7RNB2apqQosEEXV0AB80EKWPUXmGtQ4mQ+DSjN3sfp4Cy9fA+DKZDmMAJ77c4W8QZceueQkez4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772028734; c=relaxed/simple;
	bh=ACbiWVIqBGI2qK17CPe8MAR8zyquGO/3MB0AzrECbqM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BejfwLYmOj+ef0hm1gkXa+aeRYtxb+nmilYo8An2ZislZckKQckXQX1VQY+gNppxXQUD/xnd+dJkIZBhT9KCS0dGxa/xeVyXaRXhwdE45AbFCOXvp2Ns4wM6tkX4iPcB8v5i6FRx4YvAFmRYXhuA4I8i3LnDm4u3uYmVF/y3NQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zvdmcl6Q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a10FeysW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9SCuq806718
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 14:12:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D/tdRG/a6yLtpVfy8PztF2ki7pTLjIQWmR0qzyE7NZw=; b=Zvdmcl6Q2vScmYbm
	O5pNlk7bx3nXRQ97tj7oSCoV4KF/4VHAsDDN/as2Y0gw8bndw/yP66rZKCQC//s3
	d5usxQ9wQdxP3Ks5UeXyzoXI/0CbiqUuWkoeBNOd76o7i0BmvEDNtoo6uAOz90Lm
	Mya7iOZBZZ6iA8856Ln2H/qk3+UuPURrzWru6P6QNXUEoA7GSsBUbZmCXNHhoRwR
	qB8jCOeLFxUP9u+irk5fxNC0qKPaLMkR5tM3NsY1Qblbu2gntzf+Zn8vsuHqRjp6
	uVgeWPj6Ywnau0ImCdA1Aw68ulWBdTkbBuKE49QqXWURuNhVn1yUxMdT9kMsMZzx
	cE25dQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chr5p9urb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 14:12:11 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c6ea0e59784so3193468a12.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:12:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772028730; x=1772633530; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=D/tdRG/a6yLtpVfy8PztF2ki7pTLjIQWmR0qzyE7NZw=;
        b=a10FeysWNYuuK9DXaWQUJFXk8fsLZRzOlCIfc/bntLjFjurhqoj9VZLPPMK6BNMrUo
         wshwLrqEfCRI4GAN9HP065zBVdZaSCNm7e/3dWofuDXt/6ZRUwCUjojSapFG3kWiCuiU
         ARI3/CCRWAD2mz87PzK7oaSkZRG3bojBUH/pVWVBELqfLRbKhE7ST6mqS4rNuL+bb7A/
         9z4yyKXoE+v2AVubZkb6wYjM2HZLKxKvQmrIpEQMV58A4JXvebxoo0WCNqg8Sds75VA0
         z0hNDU/t0F2iYB+etdUBaqwGuiORngS1RKlLzYdK5c6w2CB2ocbukLF2GwhKMUlzpMJb
         APhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772028730; x=1772633530;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D/tdRG/a6yLtpVfy8PztF2ki7pTLjIQWmR0qzyE7NZw=;
        b=Lo0pljfkxeKVXdm5Gg5l37nFFNBZScuvKr8H0YpM3WrXOfngqgNAwwMsvQlUgsh/LT
         sHb7ojko1OdP0Z/mZzsNjGINtt5Z/SWR3V1y/oQVWRsQWGaY7qszZ589xI4dJg0XPQOe
         dgXM5/IIeix5WBbH41CrHlyoOkp0NN4GQ0Y61gx0bQVARhx8XuBWLyuEbYvdry3yrVJF
         PwtWnUh4CUZPu6REp5g2lYwpFWG2NfUfFrCT5TNTy95lfnfc4pMWSAy1cyqo7jsK4oyS
         sFmaJJoEqV2dBTEMIK5B24N0BI3LCiiv68zcaxSAvuk2/ejRWj5YsOG7O5tuVzbC4lLk
         Isqw==
X-Forwarded-Encrypted: i=1; AJvYcCUZAnPmYrcQZKZI1Hd889THCOFGRzJbwSngjVNjMe88I/aFYfWCJxFOjH4oUPJKE78k13GsxyfJe34l@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4qAGo7+FeOpBUrnCXwS0Vl6Lj5g3g0ayZ72LtUeu3NNFdfgDL
	QAY36OHlB0YEDylGyYLxkHkdkDZvuXFfwRBYp7oLkfduOxWUn2U+qRxhA1xOzIYXnT+gO0OfrIM
	qZIThkZkyh8txKfgsZ7wsQSiL0m+SR+XvJnlrBSehzpyMSnDW2/y2nMdIZi+bUIsx
X-Gm-Gg: ATEYQzwa4Isbb+B4W+SDfDU/XMSqYsOd0g96LHkStVo3bihh3MZgjBHDsPJ1gsRcfd+
	L+zf4nlR5xP8KcLdI3DIusBTKaHKNpcsipfbHTtOMMc4DV9NqD7tpB6hLWBGzbApog3/4s3yQAi
	kEThF/t+9mK0nxF3otSJphGB+gIF0juhA6Fwc1R0ZrxnKjjEuzOMLiRSFLTt5xmCIDP70ongTru
	uzzOwyCUE3yxGIU2hom3deI2JU3hUkfNnlohE+8rt21DjSpTepS1J44QreKFoqMLSMo8pcaqaam
	/OndsKM95gX83cfi52JtoQ+PLgAUZDbPsy7GBMBz+FSDI6X3ti5EqiK14C2/BX5Gk1I/bYMwN3b
	3tJxIMVSmUjynj7ULIX7ZR5Sgy/yfwWFQtR/kXf2AJnBvdcKYSCTITmKUSJhYff9vzC9Rr8Q2SX
	ThDBNUkvRICOmRgufMyPIixTsZQIFh2YyNhW0ZzPoFiQ==
X-Received: by 2002:a05:6a20:258d:b0:35e:11ff:45bd with SMTP id adf61e73a8af0-39545f7a3aemr10149921637.5.1772028730052;
        Wed, 25 Feb 2026 06:12:10 -0800 (PST)
X-Received: by 2002:a05:6a20:258d:b0:35e:11ff:45bd with SMTP id adf61e73a8af0-39545f7a3aemr10149892637.5.1772028729571;
        Wed, 25 Feb 2026 06:12:09 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd63f1b3sm13722907b3a.3.2026.02.25.06.12.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 06:12:09 -0800 (PST)
Date: Wed, 25 Feb 2026 19:42:00 +0530
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Tony <syyang@lontium.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>,
        =?utf-8?B?5pyx5pmT5piO?= <xmzhu@lontium.corp-partner.google.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: bridge: lt8713sx: Add bindings
Message-ID: <aZ8DMPRqKWvxKIFC@hu-vishsain-blr.qualcomm.com>
References: <20260224-lt8713sx-bridge-driver-v4-0-b5603f5458d8@oss.qualcomm.com>
 <20260224-lt8713sx-bridge-driver-v4-1-b5603f5458d8@oss.qualcomm.com>
 <20260225-agile-godlike-orangutan-07abad@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260225-agile-godlike-orangutan-07abad@quoll>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDEzNSBTYWx0ZWRfX3C9A5jx99/Cq
 WLl95RqYv+AdCRzj8o49yIRu5Iby7B45IbFQt5WYwj1Ekoi7kmxnxu+Kzk+fVOZ1L0Jm0/HhlHN
 PPgUmtj3YNNEcYdESGGNImwoIcy/6/k38EdeQCzeB1Qf4WpXgd4QVHr528lG0JQAfsphFUhRGV1
 Zodzq+9KT6RINYeuNg1MzqYGXvbxh7Vq0jEcn+WISKZuIg4YVfasSlYS09cb9RlMBkOX9ulCzhx
 c8FXVtmTVXUfSVUagHZzLXy42FPAJE/GpahilvFo1mJ9FeBOHM4TFdPu+3KoKQCFhBDy9BRZUiN
 pTru48IxB+Gq0s6iL4hx3hGHmw5hkuXDnHoSVkrsYgSrMCkH3+BppY4lgl+33sXrJCPWuWFkZql
 kYrFs0j7DtdPuSlaqK2poN1uKRCdheVd/McHe2DJOmiEpWjS92TpIosPo1ezfRFxf+ftak/vNKx
 Rw6EQjk/Rrpyk7sZrhA==
X-Authority-Analysis: v=2.4 cv=GstPO01C c=1 sm=1 tr=0 ts=699f033b cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=gEfo2CItAAAA:8 a=P-IC7800AAAA:8 a=EUspDBNiAAAA:8 a=1XWaLZrsAAAA:8
 a=Kz8-B0t5AAAA:8 a=8oXlZb-C5KnNZdz608wA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22 a=sptkURWiP4Gy88Gu7hUp:22 a=d3PnA9EDa4IxuAV0gXij:22
 a=RuZk68QooNbwfxovefhk:22
X-Proofpoint-GUID: _Ytt-QsHqoZP6f3nie_knfKx6NnwBbl3
X-Proofpoint-ORIG-GUID: _Ytt-QsHqoZP6f3nie_knfKx6NnwBbl3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_01,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 phishscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250135
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,lontium.com,lists.freedesktop.org,vger.kernel.org,oss.qualcomm.com,qti.qualcomm.com,lontium.corp-partner.google.com];
	TAGGED_FROM(0.00)[bounces-268397-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,lontium.com:email,oss.qualcomm.com:dkim,bootlin.com:url,devicetree.org:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vishnu.saini@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 872D419889B
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 11:35:45AM +0100, Krzysztof Kozlowski wrote:
> On Tue, Feb 24, 2026 at 11:25:35PM +0530, Vishnu Saini wrote:
> > Add bindings for lt8713sx.
> > 
> > Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> > Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> > Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> > Cc: 朱晓明 <xmzhu@lontium.corp-partner.google.com>
> 
> Please use latin transliteration/translation, if possible.

I will fix this in next revision.
 
> > ---
> >  .../bindings/display/bridge/lontium,lt8713sx.yaml  | 113 +++++++++++++++++++++
> >  1 file changed, 113 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml
> > new file mode 100644
> > index 000000000000..29a773154b39
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml
> > @@ -0,0 +1,113 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/bridge/lontium,lt8713sx.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Lontium LT8713SX Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0/DP++ bridge-hub
> > +
> > +maintainers:
> > +  - Tony <syyang@lontium.com>
> 
> Is Tony full legal name, transliterated to Latin alphabet?

"Tony <syyang@lontium.com>" is Author in original reference driver shared by lontium so i added him.
Will cross check with lontium on this and update in next revision.

> Also Tony, please kindly ack this change.
>
> You already received such question at v3 :/
> 
> Also not sure why I am spending my time SECOND time on it. Read very
> carefully all the rules:

Sorry, for missing the Reviewed-by tag, the v4 patch is not significently changed.
i will add Reviewed-by tag in next revision.

> <form letter>
> This is a friendly reminder during the review process.
> 
> It looks like you received a tag and forgot to add it.
> 
> If you do not know the process, here is a short explanation:
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new
> versions of patchset, under or above your Signed-off-by tag, unless
> patch changed significantly (e.g. new properties added to the DT
> bindings). Tag is "received", when provided in a message replied to you
> on the mailing list. Tools like b4 can help here. However, there's no
> need to repost patches *only* to add the tags. The upstream maintainer
> will do that for tags received on the version they apply.
> 
> Please read:
> https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577
> 
> If a tag was not added on purpose, please state why and what changed.
> </form letter>
> 
> Best regards,
> Krzysztof
> 

