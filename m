Return-Path: <devicetree+bounces-283191-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJuVIshBzGm+RgYAu9opvQ
	(envelope-from <devicetree+bounces-283191-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 23:51:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFDB372308
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 23:51:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CC90330CCC11
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 21:46:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 051A64657D6;
	Tue, 31 Mar 2026 21:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="uYz5MRzt";
	dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b="pruv7vUi"
X-Original-To: devicetree@vger.kernel.org
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EE304657D0;
	Tue, 31 Mar 2026 21:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774993583; cv=none; b=Gl8GUsO+nmqC09+kZEN50Lb6Dl8TE+p1QwHandYV4+6wyleKl5tDakfUPF46ZzUbSAi18RRxHuXROoIGOL2Fr/dtqunHqO37Vz3yVWhYe3i/MsjrzWLB6dNiA76UWTELR/vW3ipa5OAUkQcqdLiQBZ3HaGGdlpIrfTDesngEje8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774993583; c=relaxed/simple;
	bh=zXimlPvaSN3TiCDbuYgqgDDk+ufzTdGC3Y/YKgdcbdI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nN43Ap8EH/dhnJx9iBfJu0bw8vD6D/dpeW1/59HsGVExjk8v08ipSLEu9wNZ+y+MLVg264sZElxNXLnMkn3vcF9BlZ88vqSFOadVThtKoyaTKm2QQB4KNjHyUuFFdVDZH/aNybD8u6TYp7+xd02W66t1QI97teenDmcgDZ8D4sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org; spf=pass smtp.mailfrom=mailbox.org; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=uYz5MRzt; dkim=pass (2048-bit key) header.d=mailbox.org header.i=@mailbox.org header.b=pruv7vUi; arc=none smtp.client-ip=80.241.56.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mailbox.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mailbox.org
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4flhWv21gnz9tmn;
	Tue, 31 Mar 2026 23:46:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1774993579;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ozSaOh7+BpCE0vApkvACw7eBcsLY93hAI+RbZthq0No=;
	b=uYz5MRztFxcvePVgI0MuzKTwFQFS4npnKPtcyXSuD7GzHv3d/L2ELZwQwontUbsxfzlBY0
	ClP3863kKbiuCNPgFbdt7bCk/+iEhgvtOR5CsmNF1g0aLkt03rkyxZ1paR3uPEj3H5VVjo
	iS/LWTvy/vNV9XX7OgQ+FAWltIF29ino8GY9WItgWA/gl8nBZsLq+pwwHI9eNKqSR2qGXK
	p6Xucgkds9JoMVFs+u0q9GXs4XxmoY9l5vjbPSu1NyyGLKG22v/n+bIctTus4kRJ5WPi1s
	pMendGxdLb9as2FEEmja5sYXdJsApKC8sveuL1xyptmHW5BIAL3PNwAl2hk+iw==
Message-ID: <543fbae3-5227-44df-b8d0-bc2798e4a96e@mailbox.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1774993577;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ozSaOh7+BpCE0vApkvACw7eBcsLY93hAI+RbZthq0No=;
	b=pruv7vUiaf01/ByQ6a6zYrVZwiH0oKiT2PN79GYE325/Zyk2+cDiVGHGNForDbRFSg8VFF
	MDCL1xBAvnehCEjPAmkVOnpAobHtfYbhmj2kiLUclp0DgsWjvOtxArxIATxBOWYKLs/w08
	/Mi0KcEzTRUWG1Zk4QZ8mrGSyWsyDgdC60SUbAORRBN7e1Mk333Avs+9G/Ba+7pjWOUW2G
	ga8jjfnIjkQq13WqyKPp10aBbRrK+zzh+TpAA6o/C1vKcn6erM8S0RYGGvVRoyNYElTt+5
	VvPw7x5jnAuZhhPJKOF6U+3uRvx+0dtqT6zIlaDifqqfssTjsbNKEFOG0hjD3w==
Date: Tue, 31 Mar 2026 23:46:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 0/4] drm/panel: simple: add Waveshare LCD panels
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <jesszhan0024@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding
 <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 Joseph Guo <qijian.guo@nxp.com>,
 Marek Vasut <marek.vasut+renesas@mailbox.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260330-ws-lcd-v1-0-309834a435c0@oss.qualcomm.com>
 <a13f5d5a-76aa-420e-a724-9b4714b51ccd@mailbox.org>
 <CAO9ioeUFfjr3Dh58TQ8EB7H3NgUX04N24OXXYijiigRZ8Kkh0A@mail.gmail.com>
 <982c4d97-695f-46b0-b819-a0b3d016b12b@mailbox.org>
 <kqrdzvu5ycajmdprrjqwcktq42t6453csi77ngzlkomtazxjhv@sxp7vh66my4x>
Content-Language: en-US
From: Marek Vasut <marek.vasut@mailbox.org>
In-Reply-To: <kqrdzvu5ycajmdprrjqwcktq42t6453csi77ngzlkomtazxjhv@sxp7vh66my4x>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-MBO-RS-ID: 72346ae9da5ce2ad3fe
X-MBO-RS-META: oh93f587g17taisfs85h7c8g37f1si6s
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[mailbox.org,reject];
	R_DKIM_ALLOW(-0.20)[mailbox.org:s=mail20150812];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-283191-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,ravnborg.org,nxp.com,mailbox.org,intel.com,ideasonboard.com,kwiboo.se,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marek.vasut@mailbox.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[mailbox.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:dkim,mailbox.org:email,mailbox.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0AFDB372308
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/31/26 5:36 PM, Dmitry Baryshkov wrote:
> On Tue, Mar 31, 2026 at 05:11:43AM +0200, Marek Vasut wrote:
>> On 3/31/26 3:22 AM, Dmitry Baryshkov wrote:
>>> On Tue, 31 Mar 2026 at 00:07, Marek Vasut <marek.vasut@mailbox.org> wrote:
>>>>
>>>> On 3/30/26 3:25 PM, Dmitry Baryshkov wrote:
>>>>> Waveshare have a serie of DSI panel kits with the DPI or LVDS panel
>>>>> being attached to the DSI2DPI or DSI2LVDS bridge. Commit 80b0eb11f8e0
>>>>> ("dt-bindings: display: panel: Add waveshare DPI panel support")
>>>>> described two of them in the bindings and commit 46be11b678e0
>>>>> ("drm/panel: simple: Add Waveshare 13.3" panel support") added
>>>>> definitions for one of those panels. Add support for the rest of them.
>>>> Can we by any chance use the icn6211 driver in tree for this ?
>>>
>>> As far as I can see, no. Waveshare kits have an extra ASIC in front of
>>> ICN6211 / ICN6202, which completely hides all programming. So far the
>>> interface is really better expressed by the waveshare,dsi2dpi /
>>> dsi2lvds: this way, even if they decide to change the actual
>>> implementation (like they did for DPI -> LVDS), we won't have to worry
>>> about it for as long as their programming interface remains stable.
>> Hmmm, I've seen this before, but I don't think this is extra ASIC. The
>> ICN6211 pulls its register settings from EEPROM, does it not ?
> 
> The kits that I have at hand don't have I2C EEPROMs. They have 25Q8
> QSPI. Also note that neither ICN6211 nor ICN6202 datasheets describe I2C
> master interface. It is defined as a purely I2C slave.
> 
> The kits have WSVTH01 chip (CPLD?) and 25Q8 QSPI NOR. I assume the
> bridge settings are loaded from by the WSVTH01 and programmed into the
> ICN bridge.
> 
>> But no matter how the ICN loads its configuration, this is not waveshare
>> specific. I have another display from another manufacturer here which is
>> also ICN6211 that is preprogrammed. Can we instead have some generic-dsi
>> display , because I don't think these proprogrammed DSI displays are going
>> to be only ICN6211 based and only made by waveshare ?
> 
> If it was just about the bridge config, I would completely agree with
> you. However if you check the waveshare-dsi.c, you'd notice that it is
> not directly related to either of ICN bridges. It controls backlight
> and panel regulators.
Oh ok, this part, I understand.

