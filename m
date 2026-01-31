Return-Path: <devicetree+bounces-261447-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLRcAv0mfmmLWAIAu9opvQ
	(envelope-from <devicetree+bounces-261447-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:59:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE87C2D84
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:59:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 22C5D30358BF
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 15:59:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42BF633C18C;
	Sat, 31 Jan 2026 15:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="jAyWIZvV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B88E33DEDD
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 15:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769875138; cv=none; b=m7/ZIYMAzQ/7lrfYZIRSzgwMtUTfEtyQDHe9V0qJI6TR1/rOBFXunZttnC2fvHvUH8xNCrlrYaiR4C2PWOHjVBSszooZjDNpKphNzV/GCZPSaNkoQELvI9ItnY740pF67dAv5Qdd/V+JFVXpUNfXd5QLtqMMrPbi7bltDn3Ycv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769875138; c=relaxed/simple;
	bh=K9aN7OjuKemtuSTajY0LoUlFdOIQZsAHYT3xi+Lw8SQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dvexODhncf9Y1+Klatldw4djKz6Nt5Yp0QK5Bvv2rL8CHVL0EfrsC3NIy1fK8Mr1+ywNGo+OJnc3Yp4yuzO6t2q4F56yUHFIg3plMIRlpiQU2mrm06D782xhd2oPVyr1mlywdEXdIdtx/JbfbroxWvWSGZ7Ry2ZLJRiX/breQ8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=jAyWIZvV; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42fb2314f52so1821036f8f.0
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:58:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1769875135; x=1770479935; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FVER5vPZC6mrgsjqcbK85uhUXRqOLGCzOU5rUyInYAc=;
        b=jAyWIZvVzZOL7FBF1Z2dsEP7T97EjKtDKtxreN9rC7hcjhrUkcrw6bN33SnHUCW8Gk
         A0+LaSaix/+/GD3q2d31Vl8aNa89pOuOTAFXEHxHMx0IBI+Uc6gyrt9GivmTs4/OeIj8
         VZU9vxW/BMWaLT8cvko+NTOISfITbvC9ohtjXsf7TgQBwq+kdhuKutBGwDs0JwkuqREA
         yC2aNgxP2FFeVdDsvIHh2qck4yNmVG0tPHibmLHrKBX++EOcpQ9ERj93DuOxtxAly8eB
         7KXVO46y9jOmfoTlhlr5QAFY6iCECHnC9w9fbKcGpnvBjlxZ3sgNxnAiQlNjcLjB8mAL
         ZeaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769875135; x=1770479935;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FVER5vPZC6mrgsjqcbK85uhUXRqOLGCzOU5rUyInYAc=;
        b=cqzAgT5/Elw0JA2XAYLMshLdPdWVUPmbqnHW7KxcU/5zK08LNTq5bEXt5vEa9P84io
         vqlePFKxIpgn6IYnKzUwGY7uPwzKpu0rD3t3CMUC38GuMy+L6Ib0WtVzV18/Tqk22r/X
         m+sZp4zwRxEGd3JnmIkqPHHJ/cVMuQ/lqCEVwayABUvP5IBY0v144MLyXBDiDWmYEtys
         jeeTBMXWERM79RQCm1DkOeViGeO6ZRxxLMjBAJPGjH4HGOCSiKTc2U9lfdRp+I6CHMVl
         FYsSbXhBYUSdeG5kFBuECMeu5b8p2MAzn6XTwr3HxKUOjLtmCcCRFZDMi+5wje8fQpNt
         jE0A==
X-Forwarded-Encrypted: i=1; AJvYcCX/trYmipP8m4QwJdKjz+rs3jbf2ThCfneZURh/v3USiUS1GtfdZwznV5IZo0Lxk3eJiy5O/IqB9Qca@vger.kernel.org
X-Gm-Message-State: AOJu0Yxy+tBoJTsYRP0LKshLunja1lklrXoOiVAbuLMWVYI35eovjugt
	B/yaU9CeL7XE9bXo4WlMtjuZrOBnFVMounld8tkrVq6Yvz1au1dRCLuGLdOu23kQ+zQ=
X-Gm-Gg: AZuq6aK4jUU7kHTSxLt+wCf3HARAMaPL29Cv1CsrERHK2ThvjxQGTRMbC/eCJhneAKP
	6tSfpHnqx/yltk22JLo7Kn1sP00Gi7ps4+u/DV2ylglV9sZ6DIlOWOsaqioWAKteyeoCmsltpbE
	+8ujGA/rMrYvJx3utKRjSuQIJqUbIHMxt47f/g+G0zXPvXkXajkzqFw49LpLkWLT0md/o/LP2Rz
	feGSyxx4mh9ZZCIkC1xjxo4XEkdl62w0RzcbdlrMjOHwtgBCc2ahNQBe7j+4dFe4QY8NoC+VdZy
	Ux8boy52UorLUklKDz5LGhFd1Yes6GX9dbtRUX/nTCkMtGcfF97oGdU1seNXaeYHIUVuK9zUotZ
	5dWnOZWRabO4a/dShJFIVpEZmaiJqUC0pFOx6F1Q13YGiLK2e8ddD+Ni1MgX1T02trHj3AGaffa
	CEVjVhRO/dlV9CmP8ujg==
X-Received: by 2002:a05:6000:24c1:b0:435:8ad8:b7a with SMTP id ffacd0b85a97d-435f3aaf763mr9878839f8f.46.1769875134874;
        Sat, 31 Jan 2026 07:58:54 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e1322f40sm29757534f8f.34.2026.01.31.07.58.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jan 2026 07:58:54 -0800 (PST)
Message-ID: <a34bbde5-1dc8-4cad-8deb-f2e7855eb4f8@tuxon.dev>
Date: Sat, 31 Jan 2026 17:58:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/19] nvmem: microchip-otpc: Avoid reading a
 write-only register
To: Alexander Dahl <ada@thorsis.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ryan Wanner <ryan.wanner@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 stable@vger.kernel.org, Srinivas Kandagatla <srini@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20260120143759.904013-1-ada@thorsis.com>
 <20260120154502.1280938-1-ada@thorsis.com>
 <20260120154502.1280938-4-ada@thorsis.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260120154502.1280938-4-ada@thorsis.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	TAGGED_FROM(0.00)[bounces-261447-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[thorsis.com:email,tuxon.dev:email,tuxon.dev:dkim,tuxon.dev:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6CE87C2D84
X-Rspamd-Action: no action



On 1/20/26 17:44, Alexander Dahl wrote:
> The OTPC Control Register (OTPC_CR) has just write-only members.
> Reading from that register leads to a warning in OTPC Write Protection
> Status Register (OTPC_WPSR) in field Software Error Type (SWETYP) of
> type READ_WO (A write-only register has been read (warning).)
> 
> Just create the register write content from scratch is sufficient here.
> 
> Fixes: 98830350d3fc ("nvmem: microchip-otpc: add support")
> Cc:stable@vger.kernel.org
> Signed-off-by: Alexander Dahl<ada@thorsis.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

