Return-Path: <devicetree+bounces-69202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 114828CF1EA
	for <lists+devicetree@lfdr.de>; Sun, 26 May 2024 00:49:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9BEECB210A3
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 22:49:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E1E4171CC;
	Sat, 25 May 2024 22:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DG3CdvbP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E3A129A6A
	for <devicetree@vger.kernel.org>; Sat, 25 May 2024 22:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716677382; cv=none; b=PinZ4dFbr5ACOiwUNts4VNsXrCTdSqeTnFkmj8SLgWQY9t0FdKEtwDkgyGyqStOxrXI2DRQTeVMFrGW6QCai5DZfRiENRajb+og99g2GwlTU1nu5ZwFaiDREi+LZ31t0XM5nXXJ91Ae/jde/dzdyRq2OtqpIPaD8cR/ECPQDg8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716677382; c=relaxed/simple;
	bh=GtkdsUBL3WYVixfcgRmj95EW2aGE3JRk0sx7/4uHNMg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m0wjBzQZN2o4AtocsgMEiJ8PkTHKd6EeSzwPWYC1P+bNKZcHuASrVvg5Uxmk8ws17SdgPX9PuxtpUNUp0OPpbof3zOQExnUMUk30EoFzLOUOGHR65H8HErKvrenCXDQpNb6TOuK9UqubYeVuEbWemZ6DUSDdVObbrX4U24G2jMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DG3CdvbP; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-62a14a73627so15135417b3.2
        for <devicetree@vger.kernel.org>; Sat, 25 May 2024 15:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716677380; x=1717282180; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GtkdsUBL3WYVixfcgRmj95EW2aGE3JRk0sx7/4uHNMg=;
        b=DG3CdvbPHtcWSgbvNL75cX7kvnGkFC/5NkdgnOzMVf4YtNzPaM23MkdMR8aqylIgh2
         UDldtysviWM8HHzQ/G8prnQdTpLZk+9osRboi94qAs6c6YXa/U2CTnDpRTsNPv1Kmn2t
         PMxvVdAHxPo4nnwqGjoVLn7I+nFBl+TrRVKhK4g6J0au1AA3vvhpwOLw8Yf7jZjkcdeb
         sIvOu2x0ZzFGGKy3QqzKmHraghsTa/BuWiXd8FQ7SJr+fblb1/TCRPxpK7KjuKqkFB3N
         tJrTL3CCp/AQfQv01glIwUmEacvX/ArNnTC+n0zoCJ/89AVME2lvM+8We995Ly6TXsQ0
         IpAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716677380; x=1717282180;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GtkdsUBL3WYVixfcgRmj95EW2aGE3JRk0sx7/4uHNMg=;
        b=Y81rUKvgPF6GJ7mWcQiHDhgAdrmP/n8Lq7LEFeUc2APjacZ6/5gEgyfiUrDANLZIyD
         IiMPeY/WR1jCWpYW6lZQ9REAY6Ov6UoBs9tNi2iokpa2MVOnMzhtmt4E/L2iFBN+PiqT
         VDUPke7DInF7JfGNTJBNnbZNCHGkZgkmeevhWuF/rwunMvHrPzbdMlm27zjp81QaSsfu
         m4HUXal3f160LLOrD2e/LhvBFgpGqEXeOgeJTD8ktRL/eLvywK1mFdwhQeG4jPWw8Axy
         WXoBlY6s2NMLU4uk83V2SJPPJ+x918NA22FJCT2zeOUjwIi1KHTDynhOIA+hSVXmtVTf
         XQWg==
X-Forwarded-Encrypted: i=1; AJvYcCWbkPQ9bzgc/C6bAyFZqxBKhTxOe5E9nMWfmXMpyuHCjseljQDn3DfMJYTr7FWnub+MfS/UcKYKeiWj1idbFA+owI4r7Oae4eq/SQ==
X-Gm-Message-State: AOJu0YxQYhm89rhq3M5Rzuia/B4MgRuQUlMqzi1xWq5bRa64PsfzCAtG
	Icy/d+V4738emIo0cKKO5U01aXoGEgbFC4PJzU+iRrch/DfS6A9uTyfiiEimLYrGlxkLmFbb58L
	OEVkoPiMdl/Etmi/eDI4/vsk7CTc=
X-Google-Smtp-Source: AGHT+IHaKdY6tU3uqHg9hlv4eo4aw+cXWjnMktMaBBhmEJF9s5u0yAmveyHlzKk2D4HTIKNsATsTtn5pab61VRlZzpE=
X-Received: by 2002:a25:9391:0:b0:df7:6bc3:3e73 with SMTP id
 3f1490d57ef6-df7722166b3mr5173057276.48.1716677379702; Sat, 25 May 2024
 15:49:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240524103506.187277-1-ryan@testtoast.com> <20240524103506.187277-2-ryan@testtoast.com>
 <20240524-purveyor-outlying-5201f700a56e@spud> <a7363cd2-4e2e-4894-8a16-f1913927e332@app.fastmail.com>
 <20240525-velvet-citable-a45dd06847a7@spud> <bb8b54de-c894-4fcd-a2ea-89b22cdb3a47@app.fastmail.com>
In-Reply-To: <bb8b54de-c894-4fcd-a2ea-89b22cdb3a47@app.fastmail.com>
From: =?UTF-8?B?44GN44GP44Gh44KD44KT44GV44KT?= <kikuchan98@gmail.com>
Date: Sun, 26 May 2024 07:49:28 +0900
Message-ID: <CAG40kxGEw4AyHk3P_dixKRdesGT0pLtMfpYcCCTbVGUs2NMD-w@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Add WL-355608-A8 panel
To: Ryan Walklin <ryan@testtoast.com>
Cc: Conor Dooley <conor@kernel.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chris Morgan <macroalpha82@gmail.com>
Content-Type: text/plain; charset="UTF-8"

Hi Ryan,

How about to use "anbernic,rg35xx-panel" ?
It's not generic though, some other drivers use similar strings already.

Regards,
kikuchan.

