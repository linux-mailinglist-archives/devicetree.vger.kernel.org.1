Return-Path: <devicetree+bounces-271018-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFtsKK0pqGkdpAAAu9opvQ
	(envelope-from <devicetree+bounces-271018-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 13:46:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 142181FFC9B
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 13:46:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7369730180A4
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 12:46:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D536418FDBD;
	Wed,  4 Mar 2026 12:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NtSdJn26"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF991E1E16
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 12:46:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772628364; cv=none; b=AMb5HZWPly1+oH3ZaiH/McfOpHmpfFpliojUumX36KLwUFA5Cu4xLvQv1Wi8hLPF1QYGNhpJKZgQMgabMmkwgDNIN6t1YqVe0NuwmpmmU7WIaHBtykRlQgYTGUgzZcsoh2JYh4GEbWsCFKhhhlH33Mp++x91FKEWsulc2fbqSbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772628364; c=relaxed/simple;
	bh=8a88sGmUzyKhrSQSfDC1U1YEo+WDcgXYBlkjRLvhCL8=;
	h=Content-Type:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To; b=adVFCRa5EKUEhGoET+XaPCwZYBbpBV5MlBTCEq7yzyyXh5oZboCisXy9di+1uh2oCUmQUUm9Mf3RFv8yeUfSE36K3EKazAP8jv7J4hNt/vwRfC5DJuDoMqyHzDgxzK8BPAzJAUb1fUrm5bZN6u2gFVW7KxEkulSmWnS4wujuZkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NtSdJn26; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b93698bb57aso492728066b.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 04:46:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772628362; x=1773233162; darn=vger.kernel.org;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8a88sGmUzyKhrSQSfDC1U1YEo+WDcgXYBlkjRLvhCL8=;
        b=NtSdJn26Ha6QY0mSTY4fZQmE8LAGbkwp1qHatsHJQuSzyIoIoCLYUJYETWA1cZjTwn
         TXzbS8YxEAR8PMaKt+0TpYi+VSg1NWjAnmYJYoVc2Wvq5tWAV9dxlGa9y+rf/tlDITvh
         JnBuX7C4Kl6adP6X5JaVVheS68007WitEnrRc+Iq3nMKiIQxgCkAvgiwiOnnHy7qbWAc
         nGdnFoReupf6CpiTeimocf3fNOqvLO5ZBdkBlb4HFaMvFkEnhpfcbYNsCGpxO0DM41lu
         Wft1SuFB/YkJScZma9XBgHZgktuWluwljbaUROZ8NGV9WSKczPJg1x+Z5oOmTD1HOB9T
         tq5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772628362; x=1773233162;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8a88sGmUzyKhrSQSfDC1U1YEo+WDcgXYBlkjRLvhCL8=;
        b=q2MHq1LiyruNp4NNg45AlZKdRvLY884u4Xf/bpuScORWhWuhhlPiU/oZfWOVjKWQGw
         aqPwXeMNrsOWpM2YjDze+3kmAL/Yk+7bonLAGSk52E95ewKmQEtT6vAsPnBvIzRPEGXF
         So4lOxDLv22IeI0b2X8CZxWR2hDYuuwWVa025MJcUK9Owy5TVBvhH28APhwszcakym6U
         3PpvyzzPb5KV/grieT5lsh8Vts9P2ycgpu6Lw+xZL8tHmpAo1ZweiKub/flru+MBsbeJ
         IxEDUEu9qLYIzlwWLbHPZLq2M1Om92slGI3xCJoqsA9paFZXWMMiC03Y4tljjr9ATJkF
         9JQg==
X-Forwarded-Encrypted: i=1; AJvYcCW7aGZn4DvwTQeolrdiBKLJYlrA9IOkvTf2H8ZAWVvMElklWblFXfZBVx7fztu2A82Xiiw+NvxieIsY@vger.kernel.org
X-Gm-Message-State: AOJu0YxsS3rWTaCcvSz4/fAs/WSYe10iTIJfR2EmCyazXSDrMZSi7bfn
	AFRykeeFKLa9i2UiqQb8Std4lOLeeeuXjE6K6lxVSkNsrm9Ipqwvxfyx
X-Gm-Gg: ATEYQzx6Cz07fIwkb36tISmG7/S9PW/9vpnAIELA6ZL1K6Gz0BAS+JD8X3YSeNN4nyy
	QLwlwOLNQ2TfDkWrnGNTaGc5L1YB2vBeHR9lY37y9CR6OHgJDXqSig9GY9KQnVbas3ooZScusMM
	0XMkExQw/LVF5/tyE3gDvZ/zbE80ytUyz5q0f/fYOJFSqvUJrEScTTjzaFJVTLJ6QeTePpbvwRw
	3eU4cEtaUCtgA+GcnzFWJiixKBRvNZ/Q6QLL/35cYkEjQ7NbStA/6eDtBUIAW1wgVjN6tsNYSf9
	bYXg5FoNhBL/WvoWYJj4LPzxlTKAIar9LBCfMtO5ltZxWiQgbbJOeAh1YtdS2mGF+KlJHdXbx32
	RpfTvYLuxoxMIbKKtk5xy83+P5NbtCaBmmDNRPy1vlmvJeT0bfQ9X4/W1ZX1C1uLclMR+KdOVK2
	6XPbCi0ixdrGYL4R+uaiYR22PPjWHWgioMXM+3iJV4rvk7najc8fuQb6Pc3+BLLcUSEa09eqb2h
	MmTVITLAyqgae3OvwnbdA/72Xog3gNOF4kxJislY40JBPgfKLVpCiT7MBWo75AinqxXtr9td3ZC
	119AZA8=
X-Received: by 2002:a17:906:478f:b0:b88:72da:1055 with SMTP id a640c23a62f3a-b93f02b046amr116588166b.29.1772628361420;
        Wed, 04 Mar 2026 04:46:01 -0800 (PST)
Received: from [88.202.160.248] ([88.202.160.248])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b93c7eaa49dsm277291266b.18.2026.03.04.04.45.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 04:46:00 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------NSSLOPmd0X6Ab0ytHuAB18r5"
Message-ID: <fbb68131-03ab-460b-8d11-e4892d91807f@gmail.com>
Date: Wed, 4 Mar 2026 13:46:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v2] dt-bindings: misc: xlnx,axi-fifo-mm-s: fix
 interrupt-parent property
To: Krzysztof Kozlowski <krzk@kernel.org>, robh@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, gregkh@linuxfoundation.org,
 jollys@xilinx.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev
References: <ae0a95f4-8dac-4690-8810-79ad5fee7895@gmail.com>
 <0eea78fe-59ab-4ca0-9e29-d68fa298ac09@kernel.org>
Content-Language: en-US
From: Alexandru Hossu <hossu.alexandru@gmail.com>
In-Reply-To: <0eea78fe-59ab-4ca0-9e29-d68fa298ac09@kernel.org>
X-Rspamd-Queue-Id: 142181FFC9B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271018-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hossualexandru@gmail.com,devicetree@vger.kernel.org];
	HAS_ATTACHMENT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

This is a multi-part message in MIME format.
--------------NSSLOPmd0X6Ab0ytHuAB18r5
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

v2: Remove interrupt-parent property declaration as it is a standard
property that does not need to be explicitly defined in the binding.

Signed-off-by: Alexandru Hossu <hossu.alexandru@gmail.com>
--------------NSSLOPmd0X6Ab0ytHuAB18r5
Content-Type: text/plain; charset=UTF-8;
 name="0001-dt-bindings-misc-xlnx-axi-fifo-mm-s-fix-interrupt-pa.patch"
Content-Disposition: attachment;
 filename*0="0001-dt-bindings-misc-xlnx-axi-fifo-mm-s-fix-interrupt-pa.pa";
 filename*1="tch"
Content-Transfer-Encoding: base64

RnJvbSA0MDNjNmMyOTljODJjMzlkZDA5ZWQ5ZWQ3NWQ2NzUwZDM1OGU1M2RhIE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBBbGV4YW5kcnUgSG9zc3UgPGhvc3N1LmFsZXhhbmRy
dUBnbWFpbC5jb20+CkRhdGU6IFdlZCwgNCBNYXIgMjAyNiAxMzo0MzowOSArMDEwMApTdWJq
ZWN0OiBbUEFUQ0ggdjJdIGR0LWJpbmRpbmdzOiBtaXNjOiB4bG54LGF4aS1maWZvLW1tLXM6
IGZpeAogaW50ZXJydXB0LXBhcmVudCBwcm9wZXJ0eQoKU2lnbmVkLW9mZi1ieTogQWxleGFu
ZHJ1IEhvc3N1IDxob3NzdS5hbGV4YW5kcnVAZ21haWwuY29tPgotLS0KIERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9taXNjL3hsbngsYXhpLWZpZm8tbW0tcy55YW1sIHwg
MiAtLQogMSBmaWxlIGNoYW5nZWQsIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21pc2MveGxueCxheGktZmlmby1tbS1z
LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWlzYy94bG54LGF4
aS1maWZvLW1tLXMueWFtbAppbmRleCA2ZDFjZDY1MWUuLmEyMWNhZTZlNiAxMDA2NDQKLS0t
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21pc2MveGxueCxheGktZmlm
by1tbS1zLnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21p
c2MveGxueCxheGktZmlmby1tbS1zLnlhbWwKQEAgLTMxLDcgKzMxLDYgQEAgcHJvcGVydGll
czoKICAgICBpdGVtczoKICAgICAgIC0gY29uc3Q6IGludGVycnVwdAogCi0gIGludGVycnVw
dC1wYXJlbnQ6IHRydWUKIAogICB4bG54LHVzZS1yeC1kYXRhOgogICAgICRyZWY6IC9zY2hl
bWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMgpAQCAtNTYsNyArNTUsNiBAQCBy
ZXF1aXJlZDoKICAgLSByZWcKICAgLSBpbnRlcnJ1cHRzCiAgIC0gaW50ZXJydXB0LW5hbWVz
Ci0gIC0gaW50ZXJydXB0LXBhcmVudAogICAtIHhsbngsdXNlLXJ4LWRhdGEKICAgLSB4bG54
LHVzZS10eC1kYXRhCiAKLS0gCjIuNDMuMAoK

--------------NSSLOPmd0X6Ab0ytHuAB18r5--

