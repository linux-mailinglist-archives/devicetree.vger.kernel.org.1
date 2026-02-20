Return-Path: <devicetree+bounces-266812-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLYQOw/+l2lN/AIAu9opvQ
	(envelope-from <devicetree+bounces-266812-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 07:24:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E175164F25
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 07:24:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 37134300E3E4
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 06:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CF2B302147;
	Fri, 20 Feb 2026 06:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Yzm9KJiW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Kg/qoc/S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29DF1AA1F4
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 06:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771568652; cv=none; b=P4DU4g8xlXTitte6lG8630b4OmRqYXJouTwTWLc26+3ahHUb/6MV38qM6srTnk8n/bWwWRCZCRIybHYd9p4tH5/Xk6tknC1/gWJyhgqNglHLBxp9F42kTc+WluHgShjI71h9N53NCKkzCtKz6heu8rbrWY3JON/5vqBYox7+5Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771568652; c=relaxed/simple;
	bh=qnFULWM2vc4wYZofhRWIOTEZBNaOioxsM4eaGPB6gl4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VJ/SAldHK+SpkPWuHuCaT82N/veRGAugSAOLxFhuI4xCU7sZLgc6gX8Eoy8rIgl4XMcz9omZA44jBzoOkVFLrKAgQ+APxCRgXjr9vshs2P2h7KgwL8kU4Xqv6DTsNBTsQO/VVqQ0csUP2Auk3Po6ZxScTuPcFqp/2rIlSuCmEoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Yzm9KJiW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Kg/qoc/S; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5S8xF3337651
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 06:24:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=I8V20AH9DivawdN2WvBcTWCf
	zrYOSe1nOSQ/HpoI7LA=; b=Yzm9KJiWcACzwaN9QsvBFZ0KsMe107c3NEUe9EKb
	W48Vg5hl8glRl1tSaHcSPeXceWS3lJSOZ5KIizX2KVqW4YfTshs5vwJyXNIZvhM2
	xaajYwtpAWscn2gntasa/wcKdJ2zeIAF2ZYs65WQto4nwgkZO9utr6wV8aqhTZM7
	vSp3YiBOJ6PXcRxZ2N+2T+2+DLttrLjaEtAPZsXcw3mBAKprUqbm15RcE18nsIoZ
	Uu9MtCjamQ1G7dnW3DY58G1rNYE/JFuATcbe3hrOtA4L98PHhilS3ZwcQ3C0ZnFL
	jgUBC3yFOXBaw1OggrsE0eOWXa1Opu/3WJAvMmyg2A8z0A==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cedp6gpdy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 06:24:09 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a7b8fe7c71so9763005ad.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 22:24:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771568649; x=1772173449; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=I8V20AH9DivawdN2WvBcTWCfzrYOSe1nOSQ/HpoI7LA=;
        b=Kg/qoc/Sf1t2/7+uAdnvsKWNbUuZUpHtFIQqX2SENrS3JkrLJqe6YVb89INhCWuVHy
         TfDbS+aYk2rT0Wm5lULWk57WM0xLsEded4KzoG/4B9jGS8ojzYeJX89/XZot7SoVXSbP
         AWySykpAkGtvnfBY0qoUkslkTzPu3+/oeteilzAdJ5SD+mjdo1y+cO4jo8qwdipxp4On
         yvJNQ0wp62I20R/46ViB6GYM3AtCyKne9As2zL1cTCtUUzmZMRVJKH/VjmXbzDnx2oPD
         lxfAthaiVkhAQ+66LB5nLYvsMO9piCUGpB7sGCwczPISdYz95oYV5cTbFMuYbNnE/l2P
         cuAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771568649; x=1772173449;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I8V20AH9DivawdN2WvBcTWCfzrYOSe1nOSQ/HpoI7LA=;
        b=a7eRADWW3o/EJbuCiH0ARixqSH4dHXsHW22/XVBY3Ol5FAlPmF7iAAKQkTNbVGK6O9
         E/UTpbUP7JordDf320wjDmf4ASZgpd84qaisJ72/BYDiCfUqQRnaRTCodPOJRsWDZbXH
         N8Hr2jbB37Lrco+2Fk7yTrsLZ1vhsi+YE9WWuKm8ud83076105/os1zf0BGU+mR2qgDU
         MWBbGsVgBEY+6eCGb1r81YencATSWXnSdMAXxBzOMA1N3xYtWCybjfwRDrAeh4uJvEpN
         ST5BYXD3R10Y3TuAMUipv9lPQ16RtsGKVEP9AUyyYh5C/fG7ELszuanu5WgVqGkFGzuI
         sTEw==
X-Forwarded-Encrypted: i=1; AJvYcCUDkSWclesXlDQiFx4vsr4dXsoKcNtmR7o2fH3pj5KvBFuFfy1dHaQNMxxfC95IefYaqXMG35MEu0xe@vger.kernel.org
X-Gm-Message-State: AOJu0YyTTTgNPykPJcNMqNgjMvsNeyTYBDvMGdNHTPkyY+zqiGUrA4VM
	FoHealMaBWFfrcGusA8qEJtzJJnxcBWYTJTisHjhv7li6lpnVhZesY0wRaJguLgaTory2qSGq78
	hPReThWr0X6oSDOFAtPM3Si9qICy6V6alzXS0m/pGQGAUSslVPlV7aDvHwODa7uc4
X-Gm-Gg: AZuq6aLEdWbbPODtEvwAHvohVpoWL1l6OaBYNb3kkw/bnpFrPTGFyDjyJ69Ml1L45jF
	LytYTHoh3M2K3eTKVPgU4TpKMUsXewNZ4mS4ssc/k20QChUkwWVGsDrgA7Wci7vnmuNJnZWQ93z
	5uBYZnJQI7fpDHROLAxG6VKMxrTImm+nq5gNg0eBXx0EwQQY8rJk2Ru/h2tB4omKnEidzjry2IF
	dVD/3UbxeDqdsj9XCoGyg+PQH9JXN865PJukM9Z+gUuRG1kXOnBgod4m0p9zFgrV0FIJlo7kOiX
	05bXTvdfzKOfLmS1RbKz+RDPiAT/2S3+L36jLwyHs94ZgycBxUN/vIklZb7fnmvr2jwUa1R3YXL
	d0O6udA1NFFaTvleJe1/F5OFIYbI2qgN4uRluTjTThQmGlWTZTWsOb/gGp1FlECA6pcGydJpnfi
	JPLfV0NBt43Fgf/nYKR4pSy4ZNV5F8XISUIIZFNEoQNA==
X-Received: by 2002:a17:902:e785:b0:2a9:5fa7:3d9b with SMTP id d9443c01a7336-2ab4cfd5202mr169705355ad.7.1771568649236;
        Thu, 19 Feb 2026 22:24:09 -0800 (PST)
X-Received: by 2002:a17:902:e785:b0:2a9:5fa7:3d9b with SMTP id d9443c01a7336-2ab4cfd5202mr169705155ad.7.1771568648755;
        Thu, 19 Feb 2026 22:24:08 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1a73b0fesm183300375ad.38.2026.02.19.22.24.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 22:24:08 -0800 (PST)
Date: Fri, 20 Feb 2026 11:54:00 +0530
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: bridge: lt8713sx: Add bindings
Message-ID: <aZf+AJrEKTPs8nRn@hu-vishsain-blr.qualcomm.com>
References: <20251228-lt8713sx-bridge-driver-v3-0-9169fbef0e5b@oss.qualcomm.com>
 <20251228-lt8713sx-bridge-driver-v3-1-9169fbef0e5b@oss.qualcomm.com>
 <ua6ewpauwabzyf4srnawqz6znsvrzkkl75zwqhpxk4ltdnzvj6@dkntys7skfan>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ua6ewpauwabzyf4srnawqz6znsvrzkkl75zwqhpxk4ltdnzvj6@dkntys7skfan>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA1NCBTYWx0ZWRfXz9NlZgifTqlI
 F6HP5K/RKKs0V16exYWWg0UQuqtDvrrjdEkhdNQrcjsG5WzdenVhG0cLa6ie4ugt2U9Zc7J1kI5
 GUMR5uaPEj7qq4eZDI7MLzF8ksOprB21GjCCI6hthtuilShXqfudvAaEOAyYY6DprQnWjdk/umH
 WFKeiLP1U+ONmYCFqSGvzbIADtLqzid3KjbB3L0EqE/xPi1GMX4HPnAuR9M3xocVb2zsGW/r6IU
 e9sWgu7ukzbU2ZP/0b6UediMHyNLeriV9lHr5v0kAn2hoqEqK11Zzp0k5hsN2oT/IDFvVF669WG
 8v8oGnwqF14grX109QrNgxk3YDKFZISOzcakb6UeWrb9UkZLTZlcnwv8bsHT2U8M68C8rw0EEUY
 iBg1tgdOjLCkKQrvPpPdiL7wnppc3eZ/tYieeiJ88EzHJtJK7HokxJvNQQcGQyYyyFaFPGUw/Nv
 HivHJRKs1kvfmmnZrTg==
X-Proofpoint-ORIG-GUID: njx8DX0uOs2jWVsFPUvCRehmJ_lrXLSF
X-Authority-Analysis: v=2.4 cv=Vuouwu2n c=1 sm=1 tr=0 ts=6997fe09 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=Kz8-B0t5AAAA:8 a=i8Grg5fijvnERB4Ir38A:9
 a=CjuIK1q_8ugA:10 a=324X-CrmTo6CU4MGRt3R:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=RuZk68QooNbwfxovefhk:22
X-Proofpoint-GUID: njx8DX0uOs2jWVsFPUvCRehmJ_lrXLSF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_06,2026-02-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 adultscore=0 bulkscore=0 impostorscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200054
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
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,lontium.com,lists.freedesktop.org,vger.kernel.org,oss.qualcomm.com,qti.qualcomm.com];
	TAGGED_FROM(0.00)[bounces-266812-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,hu-vishsain-blr.qualcomm.com:mid,qualcomm.com:email,qualcomm.com:dkim,0.0.0.1:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vishnu.saini@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5E175164F25
X-Rspamd-Action: no action

On Sun, Dec 28, 2025 at 04:20:46PM +0200, Dmitry Baryshkov wrote:
> On Sun, Dec 28, 2025 at 05:10:39PM +0530, Vishnu Saini wrote:
> > Add bindings for lt8713sx.
> > 
> > Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> > Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> > Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> > ---
> >  .../bindings/display/bridge/lontium,lt8713sx.yaml  | 101 +++++++++++++++++++++
> >  1 file changed, 101 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml
> > new file mode 100644
> > index 000000000000..0a6dc56e337c
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt8713sx.yaml
> > @@ -0,0 +1,101 @@
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
> Is he/she aware of this?
>
yes, Got the confirmation in email for upstreaming. I will add him in CC in next patch. 
> > +
> > +description:
> > +  The Lontium LT8713SX is a Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0 converter
> > +  that integrates one DP input and up to three configurable output interfaces
> > +  (DP1.4 / HDMI2.0 / DP++), with SST/MST functionality and audio support.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - lontium,lt8713sx
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  vcc-supply:
> > +    description: Regulator for 3.3V vcc.
> > +
> > +  vdd-supply:
> > +    description: Regulator for 1.1V vdd.
> > +
> > +  reset-gpios:
> > +    description: GPIO connected to active low RESET pin.
> > +
> > +  ports:
> > +    $ref: /schemas/graph.yaml#/properties/ports
> > +
> > +    properties:
> > +      port@0:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description:
> > +          DP port for DP input from soc to bridge chip
> > +
> > +      port@1:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description:
> > +          DP port for DP output from bridge
> > +
> > +      port@2:
> > +        $ref: /schemas/graph.yaml#/properties/port
> > +        description:
> > +          Additional DP port for DP output from bridge
> 
> Why do you have only two output ports here? The datasheet documents
> three ports.
Currently using only 2 ports in rb4 main board, 3rd edp port is in mezz board.
Will add one more port in next patch.
> > +
> > +    required:
> > +      - port@0
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - ports
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +
> > +    i2c {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +        bridge@4f {
> > +            compatible = "lontium,lt8713sx";
> > +            reg = <0x4f>;
> > +            reset-gpios = <&tlmm 6 GPIO_ACTIVE_LOW>;
> > +
> > +            ports {
> > +                #address-cells = <1>;
> > +                #size-cells = <0>;
> > +
> > +                port@0 {
> > +                    reg = <0>;
> > +                    lt8713sx_dp_in: endpoint {
> > +                        remote-endpoint = <&mdss_dp0_out>;
> > +                    };
> > +                };
> > +
> > +                port@1 {
> > +                    reg = <1>;
> > +                    lt8713sx_dp0_out: endpoint {
> > +                        remote-endpoint = <&dp0_connector_in>;
> > +                    };
> > +                };
> > +
> > +                port@2 {
> > +                    reg = <2>;
> > +                    lt8713sx_dp1_out: endpoint {
> > +                        remote-endpoint = <&dp1_connector_in>;
> > +                    };
> > +                };
> > +            };
> > +        };
> > +    };
> > 
> > -- 
> > 2.34.1
> > 
Sorry maintainers for delay in update on lt8713sx driver and dt series.
I was on travel and than went on leave for a couple of weeks. Will be dedicately work on this now. 
> -- 
> With best wishes
> Dmitry

