Return-Path: <devicetree+bounces-304449-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MOZVBzLUGWodzQgAu9opvQ
	(envelope-from <devicetree+bounces-304449-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 20:00:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF1D606F38
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 20:00:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 206AE3037997
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 17:18:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9F8637DE99;
	Fri, 29 May 2026 17:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fVbMECuS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A2337DE9D
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 17:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780075094; cv=none; b=aqOlkKb8Inb0XKoFQqjpMnzEAnNeFKXBYoLo+BEUKVUe9KLwoyyGFgMOS38IMCjaGbi4YGXH3TvLOIckh0yZ6f+Ss1U9INRX9wwUPESEWrrjsOGnvel5Ny5ypakwXXlddCiNj7+7r9RyQRk6zh2onKv/tpXdtxCOEFaBjsP3bsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780075094; c=relaxed/simple;
	bh=G7ryrgviagLdWI47pka+w5Aab5kBW1+gue5Vh006rpM=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=eBbp5vSODIMA4EznG3Gtk6sgi7G/93KS84b2Jq+xxwJXgybAJwsF1SLLmpdZibSRHz3vIdvx1Zeri1aDVNj/7eOviZIZs70BOaRgilGccIl517oX8wqHu20X+lS/PIqeg6r/A6OlhWkTBqXl1nosHP8dTdqA5r6fkjv1xxOe0a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fVbMECuS; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4903997fcb5so84252435e9.2
        for <devicetree@vger.kernel.org>; Fri, 29 May 2026 10:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780075092; x=1780679892; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=G7ryrgviagLdWI47pka+w5Aab5kBW1+gue5Vh006rpM=;
        b=fVbMECuSUvNMLkSfRO7kYqsrhZYmSRqkmN0uzwcmywkkJenKBBsIJ4z38HMTVO/9hT
         PtJXwXe8AWYH6EVbSN1S3oIPChdaj2ZT8TbMnNeitPpAUvjuisBNKTUYtxmM4bOaWrHk
         /URvKnNZ3rueA0e3dVkWSex5NYcX+4FTwMrRQYteshWf0m0/y/0ael9f1t3touswiyZD
         aISSOZ5Qm0TeKCu5FD3XoFi9L53hPCBQoc1eDgZUGj2Gwwa3sjME7354ikwxgUZmo15u
         x9MlYurPOBlNNX9GP6JEfyRjVwJ+I72G44L9Vkh042kiSIf0X5S5RJDg6Ej2lc5NnH04
         yUaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780075092; x=1780679892;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G7ryrgviagLdWI47pka+w5Aab5kBW1+gue5Vh006rpM=;
        b=bc4lef3yGrrOBplSh9eKA1uaXnwcU0lRMLnENA5cnrhXWN0eyKA2Mi4gMn96qJT0se
         dRZS5jruGv5UMSKkF8ZUo0tbCFyTIVJQryig/FOZNvHEseqWqbewxlRMP7XXTIoAkgAv
         SIoHbRxmYA38NSYq+KiiqAXx8yDyYwvoMeEBW3Giv0ZcHgeFvH7QN5DtlKdufY6XJzMU
         4eb4r6rd6H6nuie3N9Ub+MITQmU00FH516ir0o/mgSqGc6bEAURCEtdtHbid1kKjZiJm
         9OshvOHeLR9mAXWAL6IowmQeoUd+/Y2gj+xalmH9i8v7RP8YG8/vgG9IXbEKYiAjX3ow
         8lzg==
X-Forwarded-Encrypted: i=1; AFNElJ+/7qpWcHLoI2VX0uFe6DdzbfDW96n3xDeU7z8Ke1ktLLxzLJSx5O1mBqgJhinrNGrFJR05SG4EknvA@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ9S5T2fTpI00iKphRJFT6TY5EKaLjiR9tH4bHrJUI4skq20wB
	5JyUf0iIugmJvXwkfCjebB8lgHTAV7nGOJAeTPL2r1P/xfYxLQ4UN1aY
X-Gm-Gg: Acq92OF/5QiunyhoUr/xPXPNLWG0AEQ3/1m9pwez+Uyho31xt19oGEZDRPvSYTOlbQp
	KzKmPRdGVyTfvcf7V/s9JanRho3oRcJCbzgC7xMV9ABbrNNYpqCDRurB0Y9A+IUbSINtHTqpvXf
	xyYoU4zRR/qGYXj9GMBaA8sdPBjcw9vFbi1SWF6/yTg4huSVrUtN1UDSlQq9fXvD4Y1K6nApG0K
	GwEB0Vdx+mPziCMCH9p632AUtRSPyjwncAa5nSid/XtgDdyXpyCrVsuKo/i5OCgn86NJeDNuGEz
	5GW9+oKRraiD4U3x0qeGy9a2eIR4iHj/rQS1WS4cx7lrHfDQi0qepHyvzxaVcnt7iNCY64UnqCD
	ljQc4s+QK1lE9P6H8vuGIBIGXlaa4bCvwio1WUfq4uHfOvYBBJnX6rgvM4CsxlBSZt+Ku1oU4y4
	7KpAWInlMp16qAl3trN0T1W/UW/NDz/fuGGH8Na0HuN2gk3E8OoZrYZ1nvaTbQrFrrT2Ia9MBN2
	SwXF6kDWIGN
X-Received: by 2002:a05:600c:348f:b0:48f:e230:c3fb with SMTP id 5b1f17b1804b1-490a2988e6dmr8288595e9.33.1780075091492;
        Fri, 29 May 2026 10:18:11 -0700 (PDT)
Received: from ?IPv6:2001:8a0:c4c6:f00:cd10:fbeb:4293:8ef3? ([2001:8a0:c4c6:f00:cd10:fbeb:4293:8ef3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4909c116e2bsm19033365e9.28.2026.05.29.10.18.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2026 10:18:11 -0700 (PDT)
Message-ID: <60651f3210a5195f1ecbfc98e77c339ae0c74c2f.camel@gmail.com>
Subject: Re: [PATCH v1 6/7] arm64: dts: ti: k3-am69-aquila: Add Toradex
 Capacitive Touch Display 7" DSI
From: Vitor Soares <ivitro@gmail.com>
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
Date: Fri, 29 May 2026 18:18:09 +0100
In-Reply-To: <20260529152410.BF5DD1F00893@smtp.kernel.org>
References: <20260529120853.636015-15-ivitro@gmail.com>
	 <20260529152410.BF5DD1F00893@smtp.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.44.4-0ubuntu2.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spamd-Result: default: False [-0.56 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-304449-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ivitro@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 8EF1D606F38
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI2LTA1LTI5IGF0IDE1OjI0ICswMDAwLCBzYXNoaWtvLWJvdEBrZXJuZWwub3Jn
IHdyb3RlOgo+ID4gKyZ7L30gewo+ID4gK8KgwqDCoMKgwqDCoMKgYmFja2xpZ2h0X3B3bTM6IGJh
Y2tsaWdodC1wd20zIHsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb21wYXRp
YmxlID0gInB3bS1iYWNrbGlnaHQiOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGJyaWdodG5lc3MtbGV2ZWxzID0gPDAgNDUgNjMgODggMTE5IDE1OCAyMDMgMjU1PjsKPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkZWZhdWx0LWJyaWdodG5lc3MtbGV2ZWwgPSA8
ND47Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyogQXF1aWxhIFBXTV8zX0RT
SSAoQVFVSUxBIEI0NikgKi8KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwd21z
ID0gPCZtYWluX2VocnB3bTUgMCA2NjY2NjY3IDA+Owo+ID4gK8KgwqDCoMKgwqDCoMKgfTsKPiAK
PiBbU2V2ZXJpdHk6IEhpZ2hdCj4gVGhlIG1haW5fZWhycHdtNSBub2RlIGFwcGVhcnMgdG8gYmUg
ZGlzYWJsZWQgYnkgZGVmYXVsdCBpbiB0aGUgYmFzZSBTb0MKPiBkZXZpY2UgdHJlZSBhbmQgaXMg
bm90IGVuYWJsZWQgaW4gdGhlIGNsb3ZlciBiYXNlIGJvYXJkIGZpbGUuCj4gCj4gRG9lcyB0aGlz
IG92ZXJsYXkgbmVlZCB0byBpbmNsdWRlIGEgc3RhdHVzID0gIm9rYXkiIG92ZXJyaWRlIGZvcgo+
IG1haW5fZWhycHdtNT8gV2l0aG91dCBpdCwgdGhlIHB3bS1iYWNrbGlnaHQgZHJpdmVyIG1heSBm
YWlsIHRvIGFjcXVpcmUgdGhlCj4gUFdNIGNoYW5uZWwsIGxlYXZpbmcgdGhlIGRpc3BsYXkgYmFj
a2xpZ2h0IG5vbi1mdW5jdGlvbmFsLgoKWWVzLCBJIG1pc3NlZCB0byBlbmFibGUgaXQgdG8gY2xv
dmVyIGNhcnJpZXIgYm9hcmQuIEkgd2lsbCBzZW5kIGEgdjIgd2l0aCB0aGlzCmFkZHJlc3NlZC4K
ClRoYW5rcywKVml0b3IgU29hcmVzCg==


