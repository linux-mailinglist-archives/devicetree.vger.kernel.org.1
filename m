Return-Path: <devicetree+bounces-319494-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id r7yUBjKgRmrdaQsAu9opvQ
	(envelope-from <devicetree+bounces-319494-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 19:30:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 81CFE6FB648
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 19:30:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qq.com header.s=s201512 header.b=g+9stt4p;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319494-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319494-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=qq.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 62A8E3141823
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 16:36:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45BFB345752;
	Thu,  2 Jul 2026 16:34:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out203-205-221-239.mail.qq.com (out203-205-221-239.mail.qq.com [203.205.221.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A5730C37A
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 16:34:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783010051; cv=none; b=YJsmzb9FQdJ3QcwST7F/bzPhNS8gP7ElMFIJwlMt59QGxbpVgOwkvJ0aVENHUREi48rLR2Kcg7YbhudWn/pKSd2xo2oHGnObyQaKgXuUYITkEB7EB34GqJrtL0sF9HlnCmgk/s6EWE5w9muaG22MWhgFXgTj8nBY2ljQmkovx7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783010051; c=relaxed/simple;
	bh=wtyPvfOPlI8lO1gtfdlkwshrP9wEL3DjzSaTi1Z0qJQ=;
	h=From:To:Cc:Subject:Mime-Version:Content-Type:Date:Message-ID:
	 References:In-Reply-To; b=lua9D5wZ/n/bpSWqeUpc8RL+hhaKL1CS17czlsl+qKxT5qzbTENAN6/spZ+SPqP9zP7NNAeYWj88s6IGlTAz12KGaZNqjR1Th6nWEYAwQdNde7+9Z2ieOJTiSvlFxt2eCh6K/0frEiHPp8vv4PD3ItV2gCHfCaGVRCq4xRRku00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=qq.com; spf=pass smtp.mailfrom=qq.com; dkim=pass (1024-bit key) header.d=qq.com header.i=@qq.com header.b=g+9stt4p; arc=none smtp.client-ip=203.205.221.239
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1783010047; bh=wtyPvfOPlI8lO1gtfdlkwshrP9wEL3DjzSaTi1Z0qJQ=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=g+9stt4pnAHDdShk48bm36MMxwtwtZHvlAwU3dgHxsbu99DTclqOh2GQVSNQrprYL
	 OU5INItRuox5iGeFBypkFu7jK/alEzViEbj8/UfzajmzSzPkQP4qndmVdazqviPaW1
	 OJuhonSS3EGKafHn3aUNCOI1ozWVRtisLWC12/pk=
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
X-QQ-XMAILINFO: M3xhvUMF/amdXfLAcLPJYyxU8pfHztMec5KSMY0vwJQUUn1vgibdDU5f/p7kBy
	 osVo1Iz4SatIArLqt4V66CRmQQnG5gDWDRWyZZu/8Xh2ono92AqV+D4UZxraLFo1Y3EkUYjC7oWCf
	 RtY92rmqVasLgX3+2LWdu+59jZdbBi1qBfEe+MnKyncCfCmke9yM238yQJ+Rvfy9OaUZRDR6yEIze
	 eyzQpvxI66bzg3eErwrNs1WdEBrMhmIpskMKLBrLc+scf/sLmh5tjxUCKj6e4578zr6Mzrrlcmeqw
	 X+1YjBb/uvpwdDOL0UxcDGP5t57Us2otG5e/6g063KVnZCjPe77aq+cDL8UEqwZ2+6evoQgzhi22/
	 tS5luHM095Yi32d0tqNsXIU//PhyHDAK0KUJEbELnYTDw+4PtytWoWs5zkx7c02o+sYyHsc9oeWpi
	 VWgATXOCWDJQfDWDBnlREekcSoAg5u2nqAJ+Zs0e4hw1kZLBp5R2Svqe5tKfH4pDYdrqIHfZSuDuS
	 ZmJ58/cP2uCWT5R3phZr81iQ+sxoCvHjqx2m1XZv4KkSl6x5/yTwVT4BsQgCDsVt6MPGuQfRamSBi
	 FKu93BPG3KzSaVmkiesI5LcdjoSy+W5d7s6tisjfLLBObL714jXKEup+4qQlq1O7jeMfOP/TtxGvm
	 S0s+7oIyGkNespBfVx2o3DoOlYZk9ii4WZzgoiAJN7LqJ3A+csHMt+db7q7yRCMarKth9S8IQB8Ud
	 VdZ2emEQ3lWZFrWpP2AGAIFxilVRJ/97h0t7AUhR1qRvPB7jzhrBTAduaCEUMUYZz3s9iTSu8Riho
	 hP4+zJljgq5qA2ETivjUb1RHO1IpcO5lRTacTJm4gruidFmqujhcSPdmQ9Ff1f/S6itu2QpUV27rJ
	 4SwjkOAmx3hjMM3ZQ4ZXq2y7wgzFzW9mVrLTSznOkxR8IU8tHwrkqtxdvceMM+Lx267sKVGsg/b24
	 EJThpatMn2YyXrrhqysIfVG8jSR//llZJmOmlKtWqL0FoTdcdxi0BN1af8HdVHf12BhGAAlCDXTed
	 1H+zkTjspQDY9JLIgW98QNCW8aGdwvPHKFsFBrkstpMUKG7fdMdk2GVbL1eQA6j+Wy218LNsaD7Oq
	 ui8ht9cZHdr902M9qwKJrMphMWl+YFs5QsOTuh+bIhejQUndr6ZpuK72FHTWYFIZMHc=
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?SGVpa28gU3TDvGJuZXI=?=" <heiko@sntech.de>, "=?utf-8?B?TWFyYyBLbGVpbmUtQnVkZGU=?=" <mkl@pengutronix.de>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>
Cc: "=?utf-8?B?VmluY2VudCBNYWlsaG9s?=" <mailhol@kernel.org>, "=?utf-8?B?Um9iIEhlcnJpbmc=?=" <robh@kernel.org>, "=?utf-8?B?S3J6eXN6dG9mIEtvemxvd3NraQ==?=" <krzk+dt@kernel.org>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?Q29ub3IgRG9vbGV5?=" <conor+dt@kernel.org>, "=?utf-8?B?RG1pdHJ5IFRvcm9raG92?=" <dmitry.torokhov@gmail.com>, "=?utf-8?B?U2hlbmdqaXUgV2FuZw==?=" <shengjiu.wang@nxp.com>, "=?utf-8?B?UGVuZ3BlbmcgSG91?=" <pengpeng@iscas.ac.cn>, "=?utf-8?B?UnVzc2VsbCBLaW5n?=" <rmk+kernel@armlinux.org.uk>, "=?utf-8?B?RXJpYyBCaWdnZXJz?=" <ebiggers@kernel.org>, "=?utf-8?B?TWFyaW8gTGltb25jaWVsbG8=?=" <mario.limonciello@amd.com>, "=?utf-8?B?S2FybCBNZWhsdHJldHRlcg==?=" <kmehltretter@gmail.com>, "=?utf-8?B?WWl4dW4gTGFu?=" <dlan@kernel.org>, "=?utf-8?B?U3RlcGhlbiBCb3lk?=" <sboyd@kernel.org>, 
	"=?utf-8?B?ZGV2aWNldHJlZQ==?=" <devicetree@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?SGVpa28gU3R1ZWJuZXI=?=" <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v2 2/4] can: rockchip: add RK3588 CAN support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: base64
Date: Fri, 3 Jul 2026 00:34:04 +0800
X-Priority: 3
Message-ID: <tencent_8BE421601F31C26FB9E99FA6440629016D05@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20260702140654.2961561-1-1579567540@qq.com>
 <tencent_F077D309CDB6CC4802CC086D8009E29BDF06@qq.com>
	<3527453.usfYGdeWWP@diego>
In-Reply-To: <3527453.usfYGdeWWP@diego>
X-QQ-mid: xmsezb41-0t1783010044trbhz8vjr
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.94 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	CC_EXCESS_BASE64(1.50)[];
	FROM_EXCESS_BASE64(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qq.com,quarantine];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qq.com:s=s201512];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:heiko@sntech.de,m:mkl@pengutronix.de,m:linux-can@vger.kernel.org,m:mailhol@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:kernel@pengutronix.de,m:conor+dt@kernel.org,m:dmitry.torokhov@gmail.com,m:shengjiu.wang@nxp.com,m:pengpeng@iscas.ac.cn,m:rmk+kernel@armlinux.org.uk,m:ebiggers@kernel.org,m:mario.limonciello@amd.com,m:kmehltretter@gmail.com,m:dlan@kernel.org,m:sboyd@kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:heiko.stuebner@cherry.de,m:krzk@kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,m:rmk@armlinux.org.uk,s:lists@lfdr.de];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[1579567540@qq.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-319494-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qq.com:+];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,nxp.com,iscas.ac.cn,armlinux.org.uk,amd.com,vger.kernel.org,lists.infradead.org,cherry.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[1579567540@qq.com,devicetree@vger.kernel.org];
	HAS_X_PRIO_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,kernel];
	FREEMAIL_FROM(0.00)[qq.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,qq.com:dkim,qq.com:email,qq.com:mid,qq.com:from_mime,sntech.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 81CFE6FB648

PiBJwqB0aGlua8KgeW91wqBtaWdodMKgd2FudMKgdG/CoGRyb3DCoHRoYXTCoGFib3ZlLsKg
SWbCoGFueXRoaW5nwqBhwqBDby1kZXZlbG9wZWQtYnkKPiB3b3VsZMKgYmXCoGFwcGxpY2Fi
bGUswqBidXTCoGZyb23CoHRoZcKgKHNtYWxsKcKgc2l6ZcKgb2bCoHRoZcKgY2hhbmdlLMKg
dGhhdMKgYWxzbwo+IGlzbid0wqByZWFsbHnCoG5lY2Vzc2FyecKgZm9ywqBtZcKgOi0pCj4K
Pgo+ID7CoFNpZ25lZC1vZmYtYnk6wqBDdW5oYW/CoEx1wqA8MTU3OTU2NzU0MEBxcS5jb20+
Cj4KPiBUZXN0ZWQtYnk6wqBIZWlrb8KgU3R1ZWJuZXLCoDxoZWlrb0BzbnRlY2guZGU+Cj4g
UmV2aWV3ZWQtYnk6wqBIZWlrb8KgU3R1ZWJuZXLCoDxoZWlrb0BzbnRlY2guZGU+CgpIaSBI
ZWlrbywKClNvcnJ5IGFib3V0IHRoYXQuIFRoaXMgaXMgbXkgZmlyc3QgY29udHJpYnV0aW9u
IHRvIHRoZSBMaW51eCBrZXJuZWwsIGFuZApJIGhhdmUgbm90IGZ1bGx5IHVuZGVyc3Rvb2Qg
eWV0IHdoaWNoIHRhZ3MgYXJlIGFwcHJvcHJpYXRlIGluIHdoaWNoCnNpdHVhdGlvbnMuIFBs
ZWFzZSBiZWFyIHdpdGggbWUuCgpJIHdpbGwgYWRkIHlvdXIgQ28tZGV2ZWxvcGVkLWJ5IHRh
ZyBpbiB2MywgdG9nZXRoZXIgd2l0aCB5b3VyClNpZ25lZC1vZmYtYnkgYXMgcmVxdWlyZWQg
Zm9yIENvLWRldmVsb3BlZC1ieS4KCkJlc3QgcmVnYXJkcywKQ3VuaGFvCgoKCgo=


