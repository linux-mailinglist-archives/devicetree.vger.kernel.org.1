Return-Path: <devicetree+bounces-305604-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LQ39JHXEHmqSUwAAu9opvQ
	(envelope-from <devicetree+bounces-305604-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 13:54:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E3ADC62DBDB
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 13:54:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=P3W+FTps;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305604-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305604-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5040230861F2
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 11:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE0C13624A9;
	Tue,  2 Jun 2026 11:47:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F23F2D3220
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 11:47:46 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780400867; cv=pass; b=k4xsyvbIjNKtpjw+UzlBged4DTg5mZESyWs2vPx2U6gvF7PTYqM/E0UBr7iZ1StZ4NXLKgOG7Je5Voe6YHOdpY0nBleIlyb6N79FS/4JEfwqe0ly3uCuHPBrEjxkwTpW5ag9kdBjm0oR5x7hry29N0ID1GHO4KO7v6B80bKnr2Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780400867; c=relaxed/simple;
	bh=ia80s/TPDIDBnVGNZD0BFxErJJl6QIBJJp6uFXi3N4I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XFN3coKy7dtId3vCDyd1V6e7ZElcksq1eLBF6gNUSPlr4fSBdxvqkuH+OBxPAyMDmbiuiKQP+reZEwLD1y5LBd7a8F2MjQ2CPMzlXDAABO7lHuyr/O6SXqd0a+PkM8LgItgOZaPjNXR5Or/OjnHKjW87HkjPNDuzct6hzFFAsTA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P3W+FTps; arc=pass smtp.client-ip=209.85.128.53
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-490ac10e337so12094935e9.3
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2026 04:47:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780400865; cv=none;
        d=google.com; s=arc-20240605;
        b=KQIJPB0PCNQA0Q32hJ8JC+cfGU6GRx1XTfdCIle475qhhlhV/bRaKGFUIqiBkuU2en
         /hi4pF9taCG8UdGjKZs1+DRDSQVXPj0tk3tjJoQ5x1SbbKII0Guj/rtgphg6eifrAUEl
         m8wYmu7IztqigizPWm4qpfPitX/pbcJVQAlP+AQVzd6EmJbWBAHK4z1Er+Ywty67ZEbp
         LswcFg61o7neiO4UWvml22M7U9Zh4Xk8FGpcjyCVoTpd5PGw+x4OyhADaofb6WfakGac
         sLIg17rbxbyrEea0F3UgYU6esf79oa7n+2fXrf+AOi8+iLR6FHJgdfXCpZ/Vp9Fu9UI3
         2gaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8AwxY9CSp1eGjrFxRthuGQbj9sX7YnjxXlLiomleQTU=;
        fh=NeT1pJ7piA6I7FDHIUHQnHMjfms1mpxrN2jnc0QN8ig=;
        b=WpgglLHP+zXNVbjCqj/7QCZ9NBfeKj5lWtKNcdjvIbvlaq6GXeIRBcWY9q9CDv+SbT
         gugoySu0TgRkO2C0NkntbFuUQtGI1na+ZSkQI5Jiuh41plUM8XNRhAWceyw+g8ritZf/
         xffMJGCh4Leh44/MYV0Ii29zpHitRYfWKuslPO980mKgdk0b8/L3RZI3ciLpqio9NrIr
         hSY/M9sJy18vRuFsAhykmL5rLNVNk8oJu9jUkkhDMXaTAaOcYzRUJCcHQppASGKUS65d
         0UXNw8EsuJ037BY33rZl8Glkj4hUb7wg1tR61OaKvTV93ImMcyaqx550bnsEBrn2mtoT
         hLiw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780400865; x=1781005665; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8AwxY9CSp1eGjrFxRthuGQbj9sX7YnjxXlLiomleQTU=;
        b=P3W+FTpsmyQPfBsaWYG4IsIRdmpR/4JvThM1RJtQKOQIcBSfNga9/lMu6PIH60/5dY
         1eyz/uHF7pul7stMJLo5G0DkF94/SaN5i8aaL6fpFdENmlg+QNxXnEn7kqG/lkJRGm3o
         I6q18rX20/bjRjoPJYNrahp0OYFUTUbqqhrcWq5yasfz6rI6Revf2mrJXzuCurC0QsOm
         NR2GI34FayybhgETgoEvmD6ff+vvKfLJ0wFSOTQh/+xNqmEB2QzqqGh0IV/e5lJ2PO8u
         JNbyWPzkfEyHkzx8VPj8Ey81BUT598NVn0z96wkS9qxdmuVXjJzGOX+6nBNQqwcAI/3q
         2e+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780400865; x=1781005665;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8AwxY9CSp1eGjrFxRthuGQbj9sX7YnjxXlLiomleQTU=;
        b=CC7bHLeh68OLcpRR74FDfBGao3eU20krJcvhT/2tO5Bzd2Ds/hNRgB8AObMlIbE025
         QTaRpGqznsObuDgTyP3AYCbtV/1qbNrkl1TD/W7/Pm1V65fUlX0vBaezazVSkm4q53mq
         1ZMzLUsZuZwAs543CMWj56bHEIIyEBzkFBBZQgFRLbPAQKiKNzw5eQEvlRvAAtBdT4uq
         w3WGwRRlsdb3unf2vwJ2RpS2Pr2spqRY9sQ93QzYnu4rFWVDLfyT06zpl/UMNcCUyi0+
         jNSZXM40lhcolRliPia76u9TUM7m+OabP9s89YASlldWbSiVbuLtBUo+klaVtvE9lFvA
         RSNQ==
X-Forwarded-Encrypted: i=1; AFNElJ8Xzhuzg8mAkrZ34gNGTFfonMiOj84tM7WTIJLwbfgNcXpYFKbSG4oIJoimXhwqcgjCMJ3KTnhbpFx9@vger.kernel.org
X-Gm-Message-State: AOJu0YzkDvyMSaXbgURslhKB0BNnhQFBacyKWvoZvg7A+U/w4kQd68Fk
	2+ktIQGbGJ+lDzrHO4RfEoDe6U1N6DzorgWEark6+TmMsFlKCyd1KH75ku11mf93W3COJmQyR1W
	SvmVz60uIUS43PPEiU6HRkLXcR6qL+P4=
X-Gm-Gg: Acq92OEWbb3ggaqq0E22QXU7XcTxObXd5S9anlhMS5UIZa9b+mU8WIwPAXF6TTwpOk9
	9bAimq6Z5sMQiTLGaSFQ1RDvqGiit/m/3/vCUrNTOgNvBxTzT2rJC+zVPry9ZJfF86rfQukXoR+
	26/IPafscoGd31ozsyys1eKgW/3FqsUMreK3VCanDwX1Um/nir4qMhz6dvDpbesWEZ/PBW/n7Ya
	HUPmO8wtniDSX6Ub8ehTgc/7CdyaSnC11t0j+qT2r91hDsO0LMBn3Lv79c+YvrHmJrSDkKoBAIC
	w5/NVwsDb3CSRKsq13MfviRmt3IIRs0LJPxhCEOYy8ATQ4c1jXn+oZf4phYLhcSAeYokiciuhsW
	vIMlipL+pK5IsXbPtx9d3+Xi7VQO0df4uDXVZPZfZpVlG10qh/OPA3Chz+34MQf14nj/P/D4QGD
	GXgkhz4zxIIp7U2Bc8
X-Received: by 2002:a05:600c:6287:b0:490:5429:1513 with SMTP id
 5b1f17b1804b1-490a2901c14mr288813455e9.6.1780400864930; Tue, 02 Jun 2026
 04:47:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260531-veml6031x00-v4-0-e64f7fdce38d@gmail.com>
 <20260531-veml6031x00-v4-2-e64f7fdce38d@gmail.com> <ah6p-f2RCW8VcuDR@ashevche-desk.local>
 <DIYI40YK6CSX.2P4017PHVJHCT@gmail.com> <ah66ljSiIc0ywFC2@ashevche-desk.local>
 <CALoEA-wdakU-Ei2FE3WpGR+CYRDN1bjv2sZ=XJ01ZeH3NP8xeA@mail.gmail.com> <DIYJ5ZACTWVS.13T8L275VHTKM@gmail.com>
In-Reply-To: <DIYJ5ZACTWVS.13T8L275VHTKM@gmail.com>
From: Joshua Crofts <joshua.crofts1@gmail.com>
Date: Tue, 2 Jun 2026 13:47:33 +0200
X-Gm-Features: AVHnY4KTMuChhhggHc3Zlzy7ApZijOzq7Mr9kHfu153-5N7Dj613xK76dQ3KH3g
Message-ID: <CALoEA-w3TqD=2YP36=ScmRttmmG3BBCKvtfSqeJL0PVxRxEbuQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/4] iio: light: add support for veml6031x00 ALS series
To: Javier Carrasco <javier.carrasco.cruz@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@intel.com>, Jonathan Cameron <jic23@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Rishi Gupta <gupt21@gmail.com>, 
	David Lechner <dlechner@baylibre.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Matti Vaittinen <mazziesaccount@gmail.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:javier.carrasco.cruz@gmail.com,m:andriy.shevchenko@intel.com,m:jic23@kernel.org,m:lars@metafoo.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:gupt21@gmail.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:mazziesaccount@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:javiercarrascocruz@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[joshuacrofts1@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-305604-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joshuacrofts1@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[intel.com,kernel.org,metafoo.de,gmail.com,baylibre.com,analog.com,vger.kernel.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E3ADC62DBDB

On Tue, 2 Jun 2026 at 13:35, Javier Carrasco
<javier.carrasco.cruz@gmail.com> wrote:
> Thank you, Joshua. One question, though: maybe you remember that your
> last driver was missing one header (which I am not criticizing at all,
> as you can see I missed some too!), and I am wondering if it was because
> iwyu missed it and if so, how that could be avoided.

About that - I didn't actually run iwyu on my driver, I recently migrated to
Fedora and forgot to set up LLVM and iywu-tool :-)

-- 
Kind regards

CJD

