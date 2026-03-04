Return-Path: <devicetree+bounces-270980-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFtgNDUTqGnUngAAu9opvQ
	(envelope-from <devicetree+bounces-270980-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:10:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4174B1FEBA7
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:10:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4266D30B2105
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 11:09:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E20B03A4F26;
	Wed,  4 Mar 2026 11:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mXlbnAtY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA5939F173
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 11:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772622539; cv=none; b=cqCMDsJT3WSTfahdksYURVIqhFZSSmT9VjGwy8Bw72qsFv74tG/+F8hWYgcV159bafFC8HdzEGoMqw/tqALAEdF0PLF2e3lMWeyeRYKWlGT274T4y3Vo3o2AWYBRbsj/91OuJ2shR3B4fQlfclmtuK7Rm+KaXV0L0MpfYM/0V7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772622539; c=relaxed/simple;
	bh=gNCRGvvdxW5szFBp8kUiqsO53/UlHC9FSJOXzYPgUL4=;
	h=Content-Type:Message-ID:Date:MIME-Version:To:Cc:From:Subject; b=Xtu1UWK0AloRB+G4oZLAXYbyP18Nq/alQk3h0SPJuULJVipFQDTBNY47eXo5IYE48fZC7Fq1lnUoc4XtE1GACIJDb6hHBK1NnfaKbXu3blegjytnrEFh6hzA/HeNn1raFDGsvx/SBB+1pQpaoJR16tywXAMviF15IXPM4SOe9LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mXlbnAtY; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-65baa72399fso8917103a12.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 03:08:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772622535; x=1773227335; darn=vger.kernel.org;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=gNCRGvvdxW5szFBp8kUiqsO53/UlHC9FSJOXzYPgUL4=;
        b=mXlbnAtYtTKoV9NKQR0pk5949KO77yKTb/BEj1f0byqrVwKGZKySNhjxUaVWqngiXe
         iYUDEl/UmEMbf719Hw6tA6c5/f7rjGsDS9jxIgu2O+h4j/EJqVZKqpHTwFcHHeR/8qee
         qc1NGLTqpSlgySD52A9oRiOggInHVf1pbDaoH+bRZal6baxUooV6rbOKXDL4W1+/wDQe
         el43YscvkerayOrmsIEoya+98iv2LAMPI8TxxMkPiVmDCK2TfaIBbN2Mehs1pUdcrt9Z
         L8qr3vxFuRm9FmtAVnwbtFViBll/xUUN6fceJyshaq2VlggpW4LCVWa58OmKh8PfP9Ji
         gAfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772622535; x=1773227335;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gNCRGvvdxW5szFBp8kUiqsO53/UlHC9FSJOXzYPgUL4=;
        b=w/Xva7Vvn31yV+UhWQyFt70meKeWYMXyaTEgBKOM5IlqUsbqaBoOS5/eBOo5IsZqt0
         9e+9Zf4fiLBUz0upDPj9fIT82FNCX+MYpW2V2o7D01MkomJ9SPVK+hnkj7Lpw0co5Lqi
         rj6vCTi7w7Qa+ooGI+HF3fnBmZA/vCO7astMUxeklOP7Z0yYe04WcOx2sle0ixZVZ3Gp
         M9rDp6lrqC4EENxUkEhZO97e/o2eg/GJhze0KmhZ3UMFrYXHUTbGOpN7/fcTVmwKTw2U
         zh2PSgfVq9FA+EWWJ9UNPqknc8ZulaiJtpjW9AHR6drvTx+uFZmv8LPb/5jZKFErYFhM
         mYVQ==
X-Forwarded-Encrypted: i=1; AJvYcCURgH94q8JGlQeQob9gkZhmSiC0pHwJ39Donrq0714No6kluHgZUlHtUIzrA2IDMfpMkS0DYJanyjsg@vger.kernel.org
X-Gm-Message-State: AOJu0YwsPXb2ZOchMJtcPiO4t3vPtY+znFaYK626WvR/OpeetCCo7+IU
	pvKOhYmfNYo+f/8HoCIPuxDS60XIFMPBiGgYFC2fVrvxoE9GCc00Fe+J
X-Gm-Gg: ATEYQzyjXSMqf3knOjr4FNMUlKQIrOxkXWbPMM7Wae6hNSWwWpsw8xwVVWO8SvN4X0f
	YY9IqP+vXzCNnabNHtUSH59ePe9irZ0VO9WocQvz8d2trw904oGSFPWHWhFRbOy8ZivhtDZ2moX
	Wud0Ilfb7j6U8qt01IFMsvfLM3NO6IERKovLiK9Arlyhnay6jGEZN0Xu1ul1Kn8M2cv5gBdpLuy
	SiO+M3oJLJmYOYw6jxvLEryLYzVvE2v9hB95dDdRN8chbHCRTIKP+pio6SwsSMNIN4PWZI7bVLd
	4gEMMKsWoJBsJsgfEw4euLaXlFaQhta6ntzJ04iiRzzjxnTQ8RL/yS11+JqVFl5akfPjGWkR+mI
	V0HJStXBsL9IXRiuBMwPsTfdt+E9PunmHKniXh4y5TK48CGwrt2VkwyqWAHzkMVV0C50jv1P9r/
	nui0Cqh1La6yAambFbkVkawgp4CKnDlJrSE6UwltNv1D7se48o02Y19k1c/OJAwEXj7IBtdCM7W
	+mCHZP0nwoyPJcMjzBasOqiiXlSHjhHPg/+lVkRL/na8FN2QikF63x4vbtuDhNnj/G9WBHS
X-Received: by 2002:a17:907:7fa1:b0:b8f:e46f:8079 with SMTP id a640c23a62f3a-b93f11a3c47mr85878566b.22.1772622535164;
        Wed, 04 Mar 2026 03:08:55 -0800 (PST)
Received: from [88.202.160.248] ([88.202.160.248])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ab13593sm725431666b.3.2026.03.04.03.08.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 03:08:53 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------BPKJY1o9QCBO2WF7INVQYKtQ"
Message-ID: <ae0a95f4-8dac-4690-8810-79ad5fee7895@gmail.com>
Date: Wed, 4 Mar 2026 12:08:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: robh@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, gregkh@linuxfoundation.org,
 jollys@xilinx.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
From: Alexandru Hossu <hossu.alexandru@gmail.com>
Subject: [PATCH] staging: axis-fifo: fix alignment and add DT binding
 documentation
X-Rspamd-Queue-Id: 4174B1FEBA7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+,1:+,2:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270980-lists,devicetree=lfdr.de];
	HAS_ATTACHMENT(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hossualexandru@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,xilinx.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

This is a multi-part message in MIME format.
--------------BPKJY1o9QCBO2WF7INVQYKtQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Add YAML device tree binding documentation for the Xilinx
AXI-Stream FIFO IP core and fix code alignment issue.

Signed-off-by: Alexandru Hossu <hossu.alexandru@gmail.com>
--------------BPKJY1o9QCBO2WF7INVQYKtQ
Content-Type: text/plain; charset=UTF-8;
 name="0001-staging-axis-fifo-fix-alignment-and-add-DT-binding-d.patch"
Content-Disposition: attachment;
 filename*0="0001-staging-axis-fifo-fix-alignment-and-add-DT-binding-d.pa";
 filename*1="tch"
Content-Transfer-Encoding: base64

RnJvbSBiOTQ1MTQ3MzhhZjc4NzE3MzcxN2NiZmE4NTYzN2M1MzA4NDI4NGRhIE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBBbGV4YW5kcnUgSG9zc3UgPGhvc3N1LmFsZXhhbmRy
dUBnbWFpbC5jb20+CkRhdGU6IFdlZCwgNCBNYXIgMjAyNiAxMjowNjo0OSArMDEwMApTdWJq
ZWN0OiBbUEFUQ0hdIHN0YWdpbmc6IGF4aXMtZmlmbzogZml4IGFsaWdubWVudCBhbmQgYWRk
IERUIGJpbmRpbmcKIGRvY3VtZW50YXRpb24KClNpZ25lZC1vZmYtYnk6IEFsZXhhbmRydSBI
b3NzdSA8aG9zc3UuYWxleGFuZHJ1QGdtYWlsLmNvbT4KLS0tCiAuLi4vYmluZGluZ3MvbWlz
Yy94bG54LGF4aS1maWZvLW1tLXMueWFtbCAgICAgfCA3NyArKysrKysrKysrKysrKysrKysr
CiBkcml2ZXJzL3N0YWdpbmcvYXhpcy1maWZvL2F4aXMtZmlmby5jICAgICAgICAgfCAgNSAr
LQogMiBmaWxlcyBjaGFuZ2VkLCA4MSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCiBj
cmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21p
c2MveGxueCxheGktZmlmby1tbS1zLnlhbWwKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbWlzYy94bG54LGF4aS1maWZvLW1tLXMueWFtbCBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9taXNjL3hsbngsYXhpLWZpZm8tbW0t
cy55YW1sCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMC4uNmQxY2Q2NTFl
Ci0tLSAvZGV2L251bGwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L21pc2MveGxueCxheGktZmlmby1tbS1zLnlhbWwKQEAgLTAsMCArMSw3NyBAQAorIyBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UpCisl
WUFNTCAxLjIKKy0tLQorJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9taXNj
L3hsbngsYXhpLWZpZm8tbW0tcy55YW1sIworJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUu
b3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCisKK3RpdGxlOiBYaWxpbnggQVhJLVN0cmVh
bSBGSUZPCisKK2Rlc2NyaXB0aW9uOiB8CisgIFRoZSBYaWxpbnggQVhJLVN0cmVhbSBGSUZP
IElQIGNvcmUgaGFzIHJlYWQgYW5kIHdyaXRlIEFYSS1TdHJlYW0gRklGT3MsCisgIHRoZSBj
b250ZW50cyBvZiB3aGljaCBjYW4gYmUgYWNjZXNzZWQgZnJvbSB0aGUgQVhJNCBtZW1vcnkt
bWFwcGVkIGludGVyZmFjZS4KKyAgQ3VycmVudGx5IHN1cHBvcnRzIG9ubHkgc3RvcmUtZm9y
d2FyZCBtb2RlIHdpdGggYSAzMi1iaXQgQVhJNC1MaXRlIGludGVyZmFjZS4KKworbWFpbnRh
aW5lcnM6CisgIC0gSm9sbHkgU2hhaCA8am9sbHlzQHhpbGlueC5jb20+CisKK3Byb3BlcnRp
ZXM6CisgIGNvbXBhdGlibGU6CisgICAgZW51bToKKyAgICAgIC0geGxueCxheGktZmlmby1t
bS1zLTQuMQorICAgICAgLSB4bG54LGF4aS1maWZvLW1tLXMtNC4yCisgICAgICAtIHhsbngs
YXhpLWZpZm8tbW0tcy00LjMKKworICByZWc6CisgICAgbWF4SXRlbXM6IDEKKworICBpbnRl
cnJ1cHRzOgorICAgIG1heEl0ZW1zOiAxCisKKyAgaW50ZXJydXB0LW5hbWVzOgorICAgIGl0
ZW1zOgorICAgICAgLSBjb25zdDogaW50ZXJydXB0CisKKyAgaW50ZXJydXB0LXBhcmVudDog
dHJ1ZQorCisgIHhsbngsdXNlLXJ4LWRhdGE6CisgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMu
eWFtbCMvZGVmaW5pdGlvbnMvdWludDMyCisgICAgZW51bTogWzAsIDFdCisgICAgZGVzY3Jp
cHRpb246IFNldCB0byAxIGlmIFJYIEZJRk8gaXMgZW5hYmxlZCwgMCBvdGhlcndpc2UuCisK
KyAgeGxueCx1c2UtdHgtZGF0YToKKyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9k
ZWZpbml0aW9ucy91aW50MzIKKyAgICBlbnVtOiBbMCwgMV0KKyAgICBkZXNjcmlwdGlvbjog
U2V0IHRvIDEgaWYgVFggRklGTyBpcyBlbmFibGVkLCAwIG90aGVyd2lzZS4KKworICB4bG54
LHJ4LWZpZm8tZGVwdGg6CisgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5p
dGlvbnMvdWludDMyCisgICAgZGVzY3JpcHRpb246IERlcHRoIG9mIFJYIEZJRk8gaW4gd29y
ZHMuCisKKyAgeGxueCx0eC1maWZvLWRlcHRoOgorICAgICRyZWY6IC9zY2hlbWFzL3R5cGVz
LnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMgorICAgIGRlc2NyaXB0aW9uOiBEZXB0aCBvZiBU
WCBGSUZPIGluIHdvcmRzLgorCityZXF1aXJlZDoKKyAgLSBjb21wYXRpYmxlCisgIC0gcmVn
CisgIC0gaW50ZXJydXB0cworICAtIGludGVycnVwdC1uYW1lcworICAtIGludGVycnVwdC1w
YXJlbnQKKyAgLSB4bG54LHVzZS1yeC1kYXRhCisgIC0geGxueCx1c2UtdHgtZGF0YQorCith
ZGRpdGlvbmFsUHJvcGVydGllczogdHJ1ZQorCitleGFtcGxlczoKKyAgLSB8CisgICAgYXhp
X2ZpZm9fbW1fc18wOiBheGlfZmlmb19tbV9zQDQzYzAwMDAwIHsKKyAgICAgIGNvbXBhdGli
bGUgPSAieGxueCxheGktZmlmby1tbS1zLTQuMSI7CisgICAgICBpbnRlcnJ1cHQtbmFtZXMg
PSAiaW50ZXJydXB0IjsKKyAgICAgIGludGVycnVwdC1wYXJlbnQgPSA8JmludGM+OworICAg
ICAgaW50ZXJydXB0cyA9IDwwIDI5IDQ+OworICAgICAgcmVnID0gPDB4NDNjMDAwMDAgMHgx
MDAwMD47CisgICAgICB4bG54LHVzZS1yeC1kYXRhID0gPDB4MD47CisgICAgICB4bG54LHVz
ZS10eC1kYXRhID0gPDB4MT47CisgICAgICB4bG54LHJ4LWZpZm8tZGVwdGggPSA8MHgyMDA+
OworICAgICAgeGxueCx0eC1maWZvLWRlcHRoID0gPDB4ODAwMD47CisgICAgfTsKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9heGlzLWZpZm8vYXhpcy1maWZvLmMgYi9kcml2ZXJz
L3N0YWdpbmcvYXhpcy1maWZvL2F4aXMtZmlmby5jCmluZGV4IGFhOTBiMjcxOS4uNmNhMmJm
NGQ0IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvYXhpcy1maWZvL2F4aXMtZmlmby5j
CisrKyBiL2RyaXZlcnMvc3RhZ2luZy9heGlzLWZpZm8vYXhpcy1maWZvLmMKQEAgLTI0NSw4
ICsyNDUsMTEgQEAgc3RhdGljIHNzaXplX3QgYXhpc19maWZvX3dyaXRlKHN0cnVjdCBmaWxl
ICpmLCBjb25zdCBjaGFyIF9fdXNlciAqYnVmLAogCX0gZWxzZSB7CiAJCW11dGV4X2xvY2so
JmZpZm8tPndyaXRlX2xvY2spOwogCisJCXUzMiBmcmVlX3NwYWNlOworCisJCWZyZWVfc3Bh
Y2UgPSBpb3JlYWQzMihmaWZvLT5iYXNlX2FkZHIgKyBYTExGX1RERlZfT0ZGU0VUKTsKIAkJ
cmV0ID0gd2FpdF9ldmVudF9pbnRlcnJ1cHRpYmxlKGZpZm8tPndyaXRlX3F1ZXVlLAotCQkJ
aW9yZWFkMzIoZmlmby0+YmFzZV9hZGRyICsgWExMRl9UREZWX09GRlNFVCkgPj0gd29yZHNf
dG9fd3JpdGUpOworCQkJCQkJICAgICAgIGZyZWVfc3BhY2UgPj0gd29yZHNfdG9fd3JpdGUp
OwogCQlpZiAocmV0KQogCQkJZ290byBlbmRfdW5sb2NrOwogCX0KLS0gCjIuNDMuMAoK

--------------BPKJY1o9QCBO2WF7INVQYKtQ--

