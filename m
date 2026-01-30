Return-Path: <devicetree+bounces-261238-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLaNKO23fGm7OQIAu9opvQ
	(envelope-from <devicetree+bounces-261238-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:53:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 250ACBB5FC
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:53:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D8C7F300EF8B
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:53:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6F9E30F943;
	Fri, 30 Jan 2026 13:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ebWxdQAx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325A12F618D
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 13:53:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769781208; cv=none; b=ZOZJhr2lFBAKbRzWpj/QRk3meqUdCbBr9UGOhXP4Uqab0XvcHZQNM3A7yTzWYc9wiCSPVK65rqR+QgURBSJLZODqENf8X4zzbvosfANJdaNwMwf923J+8gkMY3W4bLlu37wImGP4bkCL0V5QoDOHfHN7URsWsEQF5Imp3LVHxhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769781208; c=relaxed/simple;
	bh=zXXCIiWd1aTcZ02PDg2t9frtKz0qB1Gapb4nnXth2zQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T4IEHe58fBPT4sbh+Te8VC8wKKNx+5uyxi1tWlkg3qvhTz3ikzVdi8Rm0RWyFpExBS7p5TJcUvTU1rpLTIhD6TLCym954xJRkXNwdp7XVKG25wd0HHDjGoXIHQIFlJdFGCWGd+XnrG9Nv+xE9P+AL6L7QEi4fUDURUEz4WRwmhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ebWxdQAx; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4801bc32725so16283005e9.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 05:53:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1769781205; x=1770386005; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4o04psgLUgXFpASZX7kNJzQcWYqB5cygy+rbJIoQuwI=;
        b=ebWxdQAxmXB1uKGQ+VwDCzICNWBdd2wVb+i7lLKS5ozbaz9SW4TzE9B37zhS9yrpsj
         YzJ9UsQGtwWOYP1oTc5+h+27gxpkvYxee/2o14kjpraR44v4PV3WMIG0U7hfNg833jcS
         w+h6BGb3Eo3d2uZj05tM9wIhFPQkmgGWu/0qACZiI4kgSqbyz+JJTqhefNiZH3fDNipx
         g6veTx+wH2w+hX+K+6tyDEooi1SbSPleCTAHCCMMDRdybXkwzm7ReT0MB//WN1knEqVt
         OWmLMIixxCD/YdnEpWloZ8MNSxJgNVVUgkEIIrR9KcExcZJwU8ugk4ZDddY/l6vc/Fm5
         hRNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769781205; x=1770386005;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4o04psgLUgXFpASZX7kNJzQcWYqB5cygy+rbJIoQuwI=;
        b=f9AkPscxh0hxsF+T77DCxvOuBo9niOSQWMXMzUuS6l7bQSounRQyxrnZi0SLuNhjVk
         N20Rf+r12k3ofEGvgRMVPZUrcMqab9yB5PlZVeED3uq5LS17MKOduuzCx6ky4MDVm+59
         U1sUyNvDglYg/YOexPPlsTDghERVlTJClvK6BM6ghd9ujjoktC6xNZUWWbJlLIbC49d/
         zJLo/acrlxc0ifbY+cod2RJTxwBqPD7BPZf0nkDaLGS+aQ9cvdCLpGpwDlYGZs+RCGyL
         mKE5yBXzNKKhutac094w6DxmOWMxuG/ZmS/DcxuxarlJrn2O93KEIML8+GDrfLm/2GIt
         /rug==
X-Forwarded-Encrypted: i=1; AJvYcCU4fV8qImorTW+8DSjd0VWoOC5nfDQ0uRrSlbuFBmnbxOy0xsH4KbnRiF7lbYOl0DMgy7hRVBgA767D@vger.kernel.org
X-Gm-Message-State: AOJu0YxAybzNzis5RiLVb8UIqKJgteEEapRTI3eGDBfOBZ5o/yLqfuQV
	/a4xRMG0/5xmOUixOiHwpqwfRVtgIbjJCdSQfin3SC/PA6aypwGdhyvdLghZnVNBFOA=
X-Gm-Gg: AZuq6aKvzSTRostho+L6s9uGcndKpHU5p85mxU0vfOOPE4+enRG3dvZdyn2EDJKzb+M
	5FGhYXdJ32KtWdgi8zWoUKvwJ9yQtrHtgJDsMMC6l7Us4ekueVmLsNj5UiDLG66zpwqdgQ1Odfa
	6JMNqxJtjj6q8e4GGs8NbVU8e9X7a5rbLfKshqJ7ojfl6/GMgWktyTIJHzzQKcoRUPrhNiTw4eV
	wN52wkm66lPmMZDg2cogBmmQscatAQak8hkKijiutgVi6dx4ZbQPcNO6tJuUG22FAwukovYmSGK
	EXFF4zKHDs59WYwFN/e5VA0CUhnze5sjQ1VZJabKzHbebq+JwCxtDEqOcCPRu7zZKZQ0j6s5IIL
	RoCUSSfhuychIp5vn3dN6E9rwrpvC1Y3+NjKZyYSPJGi4Dm1n7FkJ4cSnwiG5lB7M1u4hIkUh/g
	/rQJSSlB+XZffjhPHR0g==
X-Received: by 2002:a05:600c:3586:b0:477:582e:7a81 with SMTP id 5b1f17b1804b1-482db45237cmr39757035e9.4.1769781205391;
        Fri, 30 Jan 2026 05:53:25 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066beeaf9sm281652035e9.6.2026.01.30.05.53.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 05:53:24 -0800 (PST)
Message-ID: <377dfea9-83fd-4e76-b469-c2336118f964@tuxon.dev>
Date: Fri, 30 Jan 2026 15:53:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 07/15] PCI: rzg3s-host: Make SYSC register offsets
 SoC-specific
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260129214130.16067-1-john.madieu.xa@bp.renesas.com>
 <20260129214130.16067-8-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260129214130.16067-8-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-261238-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,google.com,gmail.com,bp.renesas.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,tuxon.dev:mid,tuxon.dev:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 250ACBB5FC
X-Rspamd-Action: no action



On 1/29/26 23:41, John Madieu wrote:
> In preparation for adding RZ/G3E support, move the RST_RSM_B register
> offset and mask into a SoC-specific data structure. Compared with RZ/G3S,
> the RZ/G3E SYSC controls different functionalities for the PCIe controller.
> 
> Make SYSC operations conditional on the presence of register offset
> information, allowing the driver to handle SoCs that don't use the
> RST_RSM_B signal.
> 
> Signed-off-by: John Madieu<john.madieu.xa@bp.renesas.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>


