Return-Path: <devicetree+bounces-266609-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHJ7G+jYlmnSpQIAu9opvQ
	(envelope-from <devicetree+bounces-266609-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:33:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3708115D627
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 10:33:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5C272300B472
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 09:33:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEE0D274FDF;
	Thu, 19 Feb 2026 09:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="Em9DhV3R"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8711670830;
	Thu, 19 Feb 2026 09:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771493604; cv=none; b=FjXQSgRZgALtgX0KCngYuV54gdtH99IV9iNu6BcOiIhHApVkbhimb14Iya4l4nceQzn1LGDKhRnWgr5RwGliOQFVg857f+1+K/hhEoHYgxayAwIOOETifjl+jw8voH3R9LWq8fIl01LaE+ndcANxQMJfnysmKwWCBUUxvN32U5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771493604; c=relaxed/simple;
	bh=ryS68lN8ZuERAn0qA6bwiJ9x6H8s68lLe4xctk0gH3Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=lfe6rYo6PP1rVamTNERtNWtChmlss+wqDpRCv1FX/b04L2DhNMJ/fDL5MIL7hpzxxo3rBFZfx5zaIgxGN1KokkTOKZ4IVdxyqVOjKO3EQZAa9wL06XKEkVMBniFSoXPu5SJNRWYfJwqThzKzyZ/8T8arcYq/KCBnz3tEmpaQ1Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=Em9DhV3R; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1771493600;
	bh=eanbz8ZOmI8oIkzFzxSYzcSBMlWhPp4W4AnfOCersdY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Em9DhV3R+xGjdNqFfRPeKn4dsAOiP/p4CsbUTMLJq2EqeejagOQUKKdnibIHHOVIE
	 v1Cskq71Zt5Rwv+W2FXBIm9ppRloXg3ZKs8DafNncBb/HUd30ZU/x/JGoG5bpuLF3Y
	 +pgyG51TAw1sVdm5BFpIoFCp1YOKBkbuxO/Ml1oMiISliAzHzwqsu/G4H4ECHfRYqN
	 DZJQNYWnmuZbwS1m5HVLnAodxuEnvusw7hQigp8J+55+YY7dd8oBPauvOVka8sbiSq
	 znvdqnVlvW+us9IOvlFdyBo3Z3GWAG8TVV3CwWkI6ttHt6EvLZRE6gkEwA0EKYL//f
	 pA4YNrfppEodQ==
Received: from [127.0.1.1] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 888786002C;
	Thu, 19 Feb 2026 17:33:19 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Tomer Maimon <tmaimon77@gmail.com>
Cc: avifishman70@gmail.com, tali.perry1@gmail.com, venture@google.com, 
 yuenn@google.com, benjaminfair@google.com, robh@kernel.org, 
 krzk+dt@kernel.org, conor+dt@kernel.org, openbmc@lists.ozlabs.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260218184800.2261674-1-tmaimon77@gmail.com>
References: <20260218184800.2261674-1-tmaimon77@gmail.com>
Subject: Re: [PATCH v1] arm64: dts: nuvoton: drop unused syscon property
 from watchdog node
Message-Id: <177149359944.1672458.8861526376824379637.b4-ty@codeconstruct.com.au>
Date: Thu, 19 Feb 2026 20:03:19 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266609-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,google.com,kernel.org,lists.ozlabs.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3708115D627
X-Rspamd-Action: no action

On Wed, 18 Feb 2026 20:48:00 +0200, Tomer Maimon wrote:
> The NPCM8XX DTSI currently includes a 'syscon' phandle in the watchdog
> node, but this property is not used by any upstream driver and is not
> documented in the NPCM watchdog binding. Since it was never reviewed and
> does not form part of the DT ABI, it can be safely removed.
> 
> 

Thanks, I've applied this to the BMC tree.

-- 
Andrew Jeffery <andrew@codeconstruct.com.au>


