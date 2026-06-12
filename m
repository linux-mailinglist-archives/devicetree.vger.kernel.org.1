Return-Path: <devicetree+bounces-311004-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cIBVGrEYLGpQLQQAu9opvQ
	(envelope-from <devicetree+bounces-311004-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:33:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B4967A34F
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:33:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=fairphone.com header.s=fair header.b=nD3x6+aw;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311004-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311004-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=fairphone.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 812C630DE83B
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 14:33:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB518371048;
	Fri, 12 Jun 2026 14:33:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC3F736BCD7
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 14:33:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781274798; cv=none; b=efilEgGoqfWctHRMQT80+e2q3nj9O5kO1O8uskpOiHad/Kd5z3QddR+jpUcgi3V3/XbA/uDxt1ykKqjC2p4H64Yj1XRGWtT4izLKqxoEcdFsb4qL8DGjyV1lE819Jj74i3o5l9h2X9VBedN7X1j+sHsbfRa6oBk73grrM9pfMvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781274798; c=relaxed/simple;
	bh=tMuFqRJtSjW/BtSIGP7fEghEyWX1qeHJdf7t1D8fGrc=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=i0rk7QiAmN/ZjmSsfUe95FU0E6dLrB3dHBVTRGoIo3JQ6eG1mw4MNwl4VBOV42eBZz2glJlfnv4CHTPpxmyIIudk2s5jzgoNikGQTtWHBWCJCtuadneYii1J0WJCGuwv6FBEGXf8i2UzerkrZ0Wbemi/UC6QeuTCjQwlZNhCOcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=nD3x6+aw; arc=none smtp.client-ip=209.85.218.43
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-bdb3fd39045so158144866b.3
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 07:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1781274795; x=1781879595; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TTLM106efnje673B2OyrJhDO3JKyBJ//Wa8kKGBktzg=;
        b=nD3x6+awdWyy26Ksyt968dbDCZ8Qpn3bIemKFD9LS0X1++6tQ7bvece/nKWDtBtsuh
         hAt6hwlxDXWWafeDGCRENBNqbLHjOh/UNwv0iLHubDlDHbuq5QHbFLd0g3YOecbEEs5I
         K7WfYomB0W/2J/mgxj1vAVocYnyhyZVMWWhwhtT0c8FKb+T8jguBpLQaIapdJ5+o7LU+
         r1cfWuq1CBr16kFmSjod5ZToTQWKHsIQA6TdalfCugDvV5kqpRY+UjM9KJF0m63Pigrl
         D3QZhb+LfppCTRo+aeuXi4ulSWlnv0K5lEHr/TYiamrkbCpwsB9qihEdl7/XTxmeJhiu
         MyjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781274795; x=1781879595;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TTLM106efnje673B2OyrJhDO3JKyBJ//Wa8kKGBktzg=;
        b=oMFnjWM7ra9+Zlu/Lvq1gYv6Cj8+LJqW0kyUFMULu1u77Q5wuLXmzU3gW1g9VyTN+l
         NRQtEturK0g0OjbKB28GJp7K+2lUXPIcemC9oCMI82qJ6nN+y3pMMas1UgE/UYNDyVN6
         ez5NsSJknskIik/FUgi1dAvMJif7nICuSbpqqB4yevcDGKkBb1RCnXsD4ACKs77swiog
         cZvicXu9TS3rJfB3p1kSiKibCW9+Ce8C20e78f3hzXdnPMxjEA4EIlPCI/rcvA6us5w4
         vkMC8Y0C4ZjeX9wkLKfH5sptjSoFXzNTnW/AwsFomVPnNdqi+y8KQ5fFYhd7ODhDTtta
         aTOg==
X-Forwarded-Encrypted: i=1; AFNElJ/DQ9wOKTrcYtHynSFOUkEFROH/yTKugelnwAb2Pxvr9He14f7tYAxpeUMTkQeiWkDFdTdZgtJwdGju@vger.kernel.org
X-Gm-Message-State: AOJu0YzFUz4Ra2bYYlH7LyhKZ4I71bGdTzOwBPwO7GWxh20s/zz9clGA
	m1SK2pzdvtG08Oz5yExTVYYEoo9WjEvnAH3nkalUzlJr02Y8ULBWo+FiVPV0eTDhpNQ=
X-Gm-Gg: Acq92OEjA3LthZH3l7KNWvvr6g5W2NvlNr4OBJP1a2DWMp9xVclgNPZxhMAKBK2VQbr
	tYR9SnLloTQNR5AJKv2z/sWZjHe9DTNvMxKEeHKtWOmMmIOKeTUClLT/YOP6EYn5pWeyOAqj2vf
	spzdDVIzPqTC39arBcC74inuibXvlcqZ2GcmEup9j2e7o5ECUoIJGaPhXK987O0v2/kXZ7Sf0I6
	CHyIMmjxC/RD8eMJ36+m+SQPRL5gf4JvFscHmSuTbfobznQ0xNNZyZe3mm9DD37uxbVX7dm5uug
	o9DoKbI55+cu0X5lzwgEC0d8650JBH9Rkj5nw29dKRlOv7LXMt0PgckcCN3wKmBL+Qr2IFb/BIc
	F77ip4FunbGT98yaVvEGAEA1UudP5KCDIQuBAqTOXv1Gw7soAC+9hzQGOM8j4CzUf0E60vEPAJd
	/DQfTKx/+um/CkFofZc23MpUojb9tqWE5ttFloV4uAi1mXzvj6plWWMaawIYVzI9TIiIeEpm3XA
	CVTSbr0XzaIcpd4f2BTUDDAjn1ASte8qko9mA==
X-Received: by 2002:a17:907:9994:b0:beb:bf23:ac78 with SMTP id a640c23a62f3a-bfe2aefcebcmr149500366b.44.1781274795114;
        Fri, 12 Jun 2026 07:33:15 -0700 (PDT)
Received: from localhost (2001-1c00-3b89-c600-b4d0-bc9f-f60e-913a.cable.dynamic.v6.ziggo.nl. [2001:1c00:3b89:c600:b4d0:bc9f:f60e:913a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfdb4b32308sm110137366b.19.2026.06.12.07.33.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jun 2026 07:33:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 12 Jun 2026 16:33:13 +0200
Message-Id: <DJ757RE8OYHO.2XEXNTLVIJ497@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Luca Weiss" <luca.weiss@fairphone.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Alexander Koskovich"
 <AKoskovich@pm.me>, "Liam Girdwood" <lgirdwood@gmail.com>, "Mark Brown"
 <broonie@kernel.org>, "Bartosz Golaszewski" <brgl@kernel.org>, "Marcel
 Holtmann" <marcel@holtmann.org>, "Luiz Augusto von Dentz"
 <luiz.dentz@gmail.com>, "Balakrishna Godavarthi"
 <quic_bgodavar@quicinc.com>, "Rocky Liao" <quic_rjliao@quicinc.com>,
 "Johannes Berg" <johannes@sipsolutions.net>, "Jeff Johnson"
 <jjohnson@kernel.org>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-bluetooth@vger.kernel.org>,
 <linux-wireless@vger.kernel.org>, <ath11k@lists.infradead.org>
Subject: Re: [PATCH v2 2/7] dt-bindings: bluetooth: qcom,wcn6750-bt:
 Document WCN6755 Bluetooth
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260403-milos-fp6-bt-wifi-v2-0-393322b27c5f@fairphone.com>
 <20260403-milos-fp6-bt-wifi-v2-2-393322b27c5f@fairphone.com>
In-Reply-To: <20260403-milos-fp6-bt-wifi-v2-2-393322b27c5f@fairphone.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311004-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:luca.weiss@fairphone.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:AKoskovich@pm.me,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:brgl@kernel.org,m:marcel@holtmann.org,m:luiz.dentz@gmail.com,m:quic_bgodavar@quicinc.com,m:quic_rjliao@quicinc.com,m:johannes@sipsolutions.net,m:jjohnson@kernel.org,m:~postmarketos/upstreaming@lists.sr.ht,m:phone-devel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:ath11k@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,m:luizdentz@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[fairphone.com,kernel.org,pm.me,gmail.com,holtmann.org,quicinc.com,sipsolutions.net];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[fairphone.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,fairphone.com:dkim,fairphone.com:email,fairphone.com:mid,fairphone.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B7B4967A34F

Hi Luiz,

On Fri Apr 3, 2026 at 3:52 PM CEST, Luca Weiss wrote:
> Document the WCN6755 Bluetooth using a fallback to WCN6750 since the two
> chips seem to be completely pin and software compatible. In fact the
> original downstream kernel just pretends the WCN6755 is a WCN6750.

Could you please pick up this patch (or provide an Ack if you want Bjorn
to pick this up with the rest of the series).

Regards
Luca

>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  .../devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.yaml     | 10 ++++=
++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750=
-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.=
yaml
> index 8606a45ac9b9..79522409d709 100644
> --- a/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.yam=
l
> +++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.yam=
l
> @@ -12,8 +12,14 @@ maintainers:
> =20
>  properties:
>    compatible:
> -    enum:
> -      - qcom,wcn6750-bt
> +    oneOf:
> +      - items:
> +          - enum:
> +              - qcom,wcn6755-bt
> +          - const: qcom,wcn6750-bt
> +
> +      - enum:
> +          - qcom,wcn6750-bt
> =20
>    enable-gpios:
>      maxItems: 1


