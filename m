Return-Path: <devicetree+bounces-270577-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCJ9Kyr6pmk7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270577-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:11:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2A11F223C
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:11:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2DC06305FDB2
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:00:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87F0E48034F;
	Tue,  3 Mar 2026 15:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b3XT6QNq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BF939EF27
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 14:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772550001; cv=none; b=M4F+PvgPXhVmKkwk6yv8XAw9SaSo5aB8elrIHqKaTjjD4WVma17YDaj3MWHnUqzqz/1bbgpR8CpfVei2uCXnjG9j2BHPEUnedHvF9uzL+cHOuXaAbTKd6yVh9YHoEuKbwCcsFH4LGxtgfRaEm5LmHrQAFxr+Hdr8K/PUFMswcqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772550001; c=relaxed/simple;
	bh=uEQgHtY9MZCTD725CBYZMjAHc2k6m1ThrmWooqXIArA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LPIy8d720INkiMHdDFJeYwb6Miz9TbHoSG3gkNNzxNbk30NP7babOAsKsDRYEhBaqFe8u7UefArDgM+m7nG1OLqw7zw9rC9XptnNetxby92ZUZYVWZRQwmBjFzcH1fyuHKLf75Xg42kYL0ntt3zuaG3lWuW9HS4kPrYZY853zuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b3XT6QNq; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4830b67aa6bso5959315e9.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 06:59:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772549998; x=1773154798; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GiLKMREsyicYQSFfLMBTINVcnbX3xGOhl62R7/wSDcA=;
        b=b3XT6QNq8LwnfX7TcL0c6hhesFGeXATnyylbIayNVpHV9Qpms8ue4x/o0igtFUehNA
         4P6ggKWvEHqcaim0dx8zOJ2sRmM4hWHro6CXii+dRSGecd/xkzYozJ7oStqXkSxq0uS+
         nq+kGPJhnTEOtUXE/YbJP2+6sfxOMRoghnFVOCXDfUJoHJ8reZReUmrnXLiA++APh/+c
         Uyphqv7EmZbiWcGlSxI+R96GCqleGE+HRDS9Vob8Yd+9lxQm8r5cmp6dRl+VxPPYNGhW
         stMsm10Nw3ONdodWsHXwtiutYh8MVOBG3LE14X/xdam9EEzbGuSKFYnriWCsL1sX4dnB
         DhuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772549998; x=1773154798;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GiLKMREsyicYQSFfLMBTINVcnbX3xGOhl62R7/wSDcA=;
        b=GUQM6wbXJhnGxut3+cLxasN65qhfROTxtX6Aks8Wru0SVgSh0BYZ7ohH/Sja6Krap9
         FqqqvuNokJxznhG1vDLDnsrKCDLMJynHYK1cdE0w3nuAc4c2EiAvvVQYhUlW5tTRrIKx
         mbKS1NBE31qgXJLJmWr/VuHBuv5KwWPI9DaWnvsA99GUT4v+/26L0bMyZNqbS6BcE99b
         Pi2jucVgYJtPzwsqqKUL6JQRnWCbvCtXcBPmpuJ9k4hd7KSTl72YpZ6Izip4bbHHnhUa
         h64tMGLcRppDwy0Jkmi3qwZSMC0EX9+VLkhWt5i0apLEDyudmNbjLshgnmtNWVpB/yI3
         LcWw==
X-Forwarded-Encrypted: i=1; AJvYcCW82Lq6WN8QYphAXiWmH6aGggTDNfp7z2baymXyeadmK84YHG+ZE9xEg/0WZPFbZKXMwXW5+3oSYUru@vger.kernel.org
X-Gm-Message-State: AOJu0Yyv8BDMfvS0nE/sWZdRyMYpGKNrLS3xVp5mG5M2k6KPof+sHEvV
	1Alm/NFhHcDL77s/K8MQp2bSyZhx1V0BbX85tfoQClxx6/tyZrOzLgsx
X-Gm-Gg: ATEYQzyDBoit6cnMvNAQ7RnsTEr5Buipl0HcVHYoAdULPuLnxSyTUEs9FKFivRKfGOG
	68Ybpb3ZiBDchYkDwKsqJ9WLSl0qxMpI0h2PR3CHKfZ1MdCv7i6VqlulHFRh8ePkBebDLa2POnM
	fV0vqhOwTW/U3a2k0XgrJmKFQlAtj6xhnnMKJ+pk2kvAMHnXUnw/HXFaSRYW+1MpnC+egU34zEf
	WvCKLpOLmPywAe1nK8lRnSvRg9uixDb6wu9HsfNQwLh5BxVlPaK0H9sS9NFMe68d8iC0h7daYij
	tV2+EH001dtcZRK+L2x9fHUXj/MPjL1QtHviH851rrO5IaSsMSusEQNUtf1GwB1v2Vve5MuAwdq
	VoJOO9WJ2ru+fBfJpfeUEyokP0nEgZkYrqmxMljOP9Z7cVCPLcOjg4wX6hdVxqmVjsY9TMy8ZyZ
	5zNNjbhEomWpKlxyo=
X-Received: by 2002:a05:600c:5249:b0:477:a478:3f94 with SMTP id 5b1f17b1804b1-483c9c29b66mr173293595e9.5.1772549998257;
        Tue, 03 Mar 2026 06:59:58 -0800 (PST)
Received: from skbuf ([2a02:2f04:d00e:3600:2472:8e4a:cf12:bb30])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd6f2f88sm459994135e9.2.2026.03.03.06.59.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 06:59:57 -0800 (PST)
Date: Tue, 3 Mar 2026 16:59:55 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Jens Emil Schulz =?utf-8?Q?=C3=98stergaard?= <jensemil.schulzostergaard@microchip.com>
Cc: UNGLinuxDriver@microchip.com, Andrew Lunn <andrew@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Woojung Huh <woojung.huh@microchip.com>,
	Russell King <linux@armlinux.org.uk>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH net-next 6/8] net: dsa: lan9645x: add vlan support
Message-ID: <20260303145955.s4kjiwjv6ahn6zph@skbuf>
References: <20260303-dsa_lan9645x_switch_driver_base-v1-0-bff8ca1396f5@microchip.com>
 <20260303-dsa_lan9645x_switch_driver_base-v1-0-bff8ca1396f5@microchip.com>
 <20260303-dsa_lan9645x_switch_driver_base-v1-6-bff8ca1396f5@microchip.com>
 <20260303-dsa_lan9645x_switch_driver_base-v1-6-bff8ca1396f5@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260303-dsa_lan9645x_switch_driver_base-v1-6-bff8ca1396f5@microchip.com>
 <20260303-dsa_lan9645x_switch_driver_base-v1-6-bff8ca1396f5@microchip.com>
X-Rspamd-Queue-Id: 0E2A11F223C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270577-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,bridge_vlan_mcast.sh:url,bridge_vlan_unaware.sh:url,bridge_vlan_change_awareness.sh:url,microchip.com:email,bridge_vlan_aware.sh:url]
X-Rspamd-Action: no action

On Tue, Mar 03, 2026 at 01:22:32PM +0100, Jens Emil Schulz Østergaard wrote:
> Add support for vlanaware bridge. We reserve vid 4095 for standalone
> mode, to implement fdb-isolation. An vlan-unaware bridge uses vid 0.
> 
> Reviewed-by: Steen Hegelund <Steen.Hegelund@microchip.com>
> Signed-off-by: Jens Emil Schulz Østergaard <jensemil.schulzostergaard@microchip.com>
> ---

Have you run these from tools/testing/selftests/net/forwarding/? It
would help to know where to look closer for potential problems.

bridge_vlan_aware.sh
bridge_vlan_change_awareness.sh
bridge_vlan_mcast.sh
bridge_vlan_unaware.sh

