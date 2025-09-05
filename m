Return-Path: <devicetree+bounces-213301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F11B450E2
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 10:06:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 115281896BB9
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 08:05:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4AEB2FFDFB;
	Fri,  5 Sep 2025 08:04:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Btp6hzfz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 009BE2FD1DC
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 08:04:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757059486; cv=none; b=HdeMUOdodpx7X9WnjqJIfvHRxAhN05hfxwZFhooJOkcBK0RecP0AedCH0toh7XHZZFYasvzRNQQQVTBHKIkFBDFzxpNTgnteYkwWCghUcOFSmuYSYJ/HMop1JBu1UgVRaD5V+x6hSnXQEhm01erGBrrtgwHB6Y5r3Cs6cgAJ86A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757059486; c=relaxed/simple;
	bh=3J4+g2V4sWrtHtemeApia0D1CwSCabpiECH2Gc7jqHs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j0uuVpJX/QhPrzcUTpE+Drp1yK58LQjV5rHERap6A1RhkptjjUacEjsM3KBsDp68qdf3mbQNJafZeUbUipXreanKh6lHHHjuLePKhT+6ftjV/owoKqAYfX9ktnzNU371oCg8LnspbPawndFD0AknDEbOeYAUhg2hFI/086uBwIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Btp6hzfz; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-336c86796c0so15528041fa.2
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 01:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1757059483; x=1757664283; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3J4+g2V4sWrtHtemeApia0D1CwSCabpiECH2Gc7jqHs=;
        b=Btp6hzfz4fIMQsarTFsMnLAfWVos9BkEPbBYhpuEYLDx26tordIN89lnk28EowcLDu
         Q0jXZGTXpVQtlsKCOFau9WlFu41K8TSr21Z6X2DbsH/kUm65eyg4FxoMMUt5ZSwZDWfn
         wns9vAoveW4954lfmyROdyO4NHh+xajzi7N+o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757059483; x=1757664283;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3J4+g2V4sWrtHtemeApia0D1CwSCabpiECH2Gc7jqHs=;
        b=fc2x/X0nSVg1V2PxhF/Vp0XhzQwg7P3bSwhpu/2MpcdePfQddPq1OpNlHlevQnmPf4
         zc5GxdK/SmrS32X7qKIFQyELx0sxvvtV7Xr/AM5/NBztgm4oiCsW1uWbqHkiw4fJMMJ8
         lapof27HrXgondIP0D5av0OmJTZrXRGhbgp+zp/zBhmV9/jwW6aCNwaX0KvvSajV07Tf
         MwCqOP6rz3pr3eZq7rpalPycEFdx3JFSnom+LOmn0+l9RqfbtPGopETKHg4F30rfwdax
         8FBk70kWmHTis7z/vHGOrCVKA1E7xFjGc3boEhTAfIm4NZOfBMGgWC1o79PU0bx31Ehg
         TGnw==
X-Forwarded-Encrypted: i=1; AJvYcCWW8t+dvo8rqW4vMMo7m2INfuiWOX3lc7x0woF6GT6STvV2i6ZgPhY7huAdtbNnn460vm9ZiIkQRdPX@vger.kernel.org
X-Gm-Message-State: AOJu0YxLTzU5ubK0vQeDKFtWGkuCS+sNpKIX5ZWOYbuTDTmKkpl2lrG0
	vnFvvtId5xGu2b2aBCzFhin1O2D78V5o2q+kbG570Rt4j6Daoz1fNywTidMOcL9HXZy72em4sSV
	uAOM9qZWFuGdUaoXS7t6qJAePXFlg+sD2I9b1R0zo
X-Gm-Gg: ASbGncuFUjrNzK30hYj70PM2MYIkFglV5WP+lnydLPdr5ORrQVFQWgpaHe1PfwL+55E
	7zbQJgL7l94s6NwfilTXNM40NNyhtsuNzmmn/WLpX60Sqds44Shw7SJ6B1LQdDyL3j6lVU+LGKJ
	m/jmmBnjyE69Is2qbCADk3+tZolbrfYvBs5M11Q+s7fitpOy4p71ZBAgKsoMM5UwGUYK+YraA9v
	smhcJcVJFB1jgB7iMQJkweR8hat3Q3O6UTTPCYu3uqprYyZ
X-Google-Smtp-Source: AGHT+IFYc+QgjrNQcnNX0OlLPGUtYQKqYiLrIJbM/loEuXaaE2NFn67DssV7d5/BEdo89ntnizvXLq3xRVbqrk9nj5U=
X-Received: by 2002:a05:651c:2106:b0:336:e176:cd3c with SMTP id
 38308e7fff4ca-336e176d479mr52475301fa.38.1757059483084; Fri, 05 Sep 2025
 01:04:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250829091913.131528-1-laura.nao@collabora.com> <20250829091913.131528-20-laura.nao@collabora.com>
In-Reply-To: <20250829091913.131528-20-laura.nao@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 5 Sep 2025 16:04:32 +0800
X-Gm-Features: Ac12FXyKW6bhjZsI-yGgtsh7BXxxyLqh5BQG4iFyVSU7pOJ_sKap2vxzQ5qbqlw
Message-ID: <CAGXv+5F0pWn5+iE+3pgpZ+GMoXDV-eoEx4zKTfsmV5cpa-WC5Q@mail.gmail.com>
Subject: Re: [PATCH v5 19/27] clk: mediatek: Add MT8196 mdpsys clock support
To: Laura Nao <laura.nao@collabora.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, p.zabel@pengutronix.de, 
	richardcochran@gmail.com, guangjie.song@mediatek.com, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, netdev@vger.kernel.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 29, 2025 at 5:21=E2=80=AFPM Laura Nao <laura.nao@collabora.com>=
 wrote:
>
> Add support for the MT8196 mdpsys clock controller, which provides clock
> gate control for MDP.
>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>

IMO removing CLK_OPS_PARENT_ENABLE is the right thing to do.

However if the hardware ends up does having a requirement that _some_
clock be enabled before touching the registers, then I think the
MTK clock library needs to be refactored, so that a register access
clock can be tied to the regmap. That might also require some work
on the syscon API.

Whether the hardware needs such a clock or not, we would need some input
from MediaTek. There's nothing in the datasheet on this.

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org> # CLK_OPS_PARENT_ENABLE remo=
val

