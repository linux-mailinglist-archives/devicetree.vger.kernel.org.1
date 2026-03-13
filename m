Return-Path: <devicetree+bounces-274816-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGOhOY9hs2lcVgAAu9opvQ
	(envelope-from <devicetree+bounces-274816-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 01:59:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6971327C1BA
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 01:59:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4F58A305D490
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 00:59:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21CAC31A55B;
	Fri, 13 Mar 2026 00:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="WtppX4aw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7DA315D5D
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 00:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773363578; cv=none; b=DiVX/0QIZveMc3Rl2kh6Yw5QmYIj8DJzN3C1TcMNFGvzT6NFWC483RySZ7iCRGhpu15l4tmif+444LzPLbXFzqvtziEwm7dS4EkdzB7IVP07cwCfRoxPRehPeoazOvif072IrnddImWMjo4Q9SGf7XH+rSY8RCck7iMKalydzk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773363578; c=relaxed/simple;
	bh=chhWq4uAe4OrP14p1imZ695PtBBTM9X4vzfnax+6qeE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=UGrdlTD1zZ2etGMOEztz3Y7G7cLby1xRuMfLOwtRDvs3xhjZULO9xVb2F4fpmpCsdeBwbBJVRl72NUHozRiodHBOOkksMXHAeowLF+1HwTLLVrp4Uz02v9DF5QR0JwauUj2JhfM+a9Nexacnk4iFAqUOcy19lFgsLV/XPMCeKrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=WtppX4aw; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-c739561f0d3so1001524a12.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 17:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773363576; x=1773968376; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q6o6ff7eVbfuDrJqEdyLStBhlwqEmt2Z90eYP9YlVxs=;
        b=WtppX4awIp9j466rzQUPVHO+eY5HUMfhNKjfqAtm3yXLyK4cWW7V7DCvqHyIBzBLKc
         9G8t3+iAM3q3pLCGzkUWODlQvMxvatvY3L01U9WP2eza3PV197TqUAWWi9hSsD6GyaGY
         9Krafu3W4tzj2pVoDfyLJXXGdbtZpdLgOqtyZAFa+bj+iYRCNQPUX/ymipInc2uy1PHO
         y6YfOkNZUaZiJaXfSjhUYQF8nbKi6MjPK6Olf0QqO3Ii1zUZM2DkvvGrcSf821JlzydQ
         HuDa5aM10w6Ks1444/XEOOohYxhR7cEGd6+8kmhrvyWElW6J0EmASXYSB3UH8g62+6q9
         dCCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773363576; x=1773968376;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Q6o6ff7eVbfuDrJqEdyLStBhlwqEmt2Z90eYP9YlVxs=;
        b=iiGxvypMwHo+M/S5OyvzN9zQrtOhc+gGJ0h1QJOsyl0+6lKHuhLyblwclVDNHXnEU1
         BoTSxXAQ5sey9axHjgVqv8Gny3iPeGQG0K3HppVQN3a4JanyHngDcIUqsW6OHM8LC1yK
         Az5AvJSDskfsbOxpUJbMiZKM5C2e/kMk1CRAsfauaaGsAMbm9ALoMszdWUVKv7I9yRuV
         11DFgjhbzrl02y431BKjxtOdVWtNqkTpGwhx7xFsaNQX8S4CAvcUj3g560S5mTXMy8Qy
         CRBkrqHm4OiNZ+wh1fi3PQSbJ3zVOrYAT8ps58BQ9ufyqIGjqWcbWffAVOz2ACmJ0mhy
         vIug==
X-Forwarded-Encrypted: i=1; AJvYcCVhPRwWlkZFn4YP0QNd4bZslxAL3Tf2y3h98YEQUA3gcRrH/uFsc0XDaHW1hIYX8QBazdLOJd44HxxS@vger.kernel.org
X-Gm-Message-State: AOJu0YxS/iel0a0Mt1Q9C5S2kCvrFwZT0P20MXOZwEmjXvzXekOdl8zS
	Jh0BOzO58SPXIh2q3RH68ikP8toOWp4pTKvGSrd1fT+hTLtgGLOwmYyBitkKeyVup9dwwlskMMQ
	ZIY/H
X-Gm-Gg: ATEYQzwKovG0W05ha7wZL1ii+lf3Nh2Cv1UfeDgfHJYQgMTbmDLbQgFaDsRkPQiCvv2
	vNf0P0pLS/z3rIgiQy0IlztchY+nIy0+GVWgdl98qAUUbY1yiCfY/JUErZWgShv7rq0jfiSFIwd
	KqQB3ikYD5o7jIgdGeQ0cHyQ7K2zP8lUVSM5uXdesyO15PG8SW3sjvLAGo21O1G0jfNohy6b9zj
	TpgCDlkLocVYe5Wa54qBKbu4brATMMqrVWDnIwN2tK4B7e2EPvs7FMcwEIbfr1MnA7XUGzKOWi6
	cwD7+PKeJrxI1vu8ok9jMisgBTy9m/206ktTNqBgiZx1spbA3NPBg2bhXcS7son7HwebIC54Dkw
	qnH68nAO8XUs6hJ8HtIOoeLUHtatFzxtMjDsS461NWH0Eg1jBQO2vs9+2wGub8Ju8rK1VvpftdJ
	KLuEHY/8SyfwYadw4aRHE=
X-Received: by 2002:a05:6a21:1fc4:b0:398:a864:2bdb with SMTP id adf61e73a8af0-398ec9f0a10mr1109335637.1.1773363576079;
        Thu, 12 Mar 2026 17:59:36 -0700 (PDT)
Received: from localhost ([97.126.187.42])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73eb998e42sm206862a12.12.2026.03.12.17.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 17:59:35 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Roger Quadros <rogerq@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Andrew Goodbody <andrew.goodbody@linaro.org>
Cc: linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Christopher Obbard <christopher.obbard@linaro.org>
In-Reply-To: <20260312-dm816x_dt-v1-1-ed3370b20799@linaro.org>
References: <20260312-dm816x_dt-v1-1-ed3370b20799@linaro.org>
Subject: Re: [PATCH] ARM: dts: omap: dm816x: Correct pinctrl register
Message-Id: <177336357525.480825.4683516533835453139.b4-ty@baylibre.com>
Date: Thu, 12 Mar 2026 17:59:35 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274816-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,baylibre.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6971327C1BA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Thu, 12 Mar 2026 14:16:57 +0000, Andrew Goodbody wrote:
> The delcaration in the pinmux device for the pinctrl registers is not
> correct. These registers are actually 32 bits wide, not 16. Also the
> mask for functional bits is also wrong. Functional bits are 0-4, not
> 0-3. So the mask needs to changed to 0x1f.
> 
> This information is taken from the TMS320DM816x DaVinci
> Digital Media Processors Technical Reference Manual.
> SPRUGX8C March 2015
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: omap: dm816x: Correct pinctrl register
      (no commit info)

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


