Return-Path: <devicetree+bounces-235433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 964C6C3880E
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 01:40:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1BDF81A200C4
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 00:40:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 176101BE871;
	Thu,  6 Nov 2025 00:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zlTTeiu1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17AE61ACEAF
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 00:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762389615; cv=none; b=gwlW47HiBcWSOjNwqk6ZxXjR9WXs5EQnUyDz4j63Naf8fbMAYWYEIf8zjLp0j0EYBuXWLWFsVo+AQexokbqlEIAX920nbGkA4lewhIsRmNYer9oCH5bNIbbgca/OH7FR3fl2Lh0ndv3ggKj/dJ2Y7kGPZixACAfgHemPD6D6i7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762389615; c=relaxed/simple;
	bh=8qq2ZhbRV2og48zRUPnewAaBEr0HlLuurubKZsklLAk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Y2crDIH/gsDyeIxICN5RLWf5Gdg8lwE82Ei4mhQlnnes4XGXk38f+mf8D+NUUwjlBS1knMmciCC2bjsW72wUX/M2DIfCWFFb6H/cGY0J6kA2ZRrNZfU1V9LnmjNADTGvw1xGjdLJEMUyvqoCVJK1aKHFjJGTCrq31JKRijJ3MXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zlTTeiu1; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2952048eb88so5333785ad.0
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 16:40:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1762389612; x=1762994412; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NkU2FfTGJiTCARoq1SWVEP1uooasHwQC6BBNqtcJeJc=;
        b=zlTTeiu1LQoSWLFwszQsSVn4KTF9VO2hCgrTCQ2kIhO+GZEhqQC1RkivUgA4cYxWYo
         gCKOknAqLf7cE23kCSjzYG2d0pBGBDve3cOEd7aYIuBRKRRi+BIe60Cpfq2i5sUtnhZ9
         QNlrG528s3XnRa6uXZFjJT7A8dRqs2hsMkIn6U/XXT4+s5ueprfwXSl656Tau/djgC+x
         +FO+JZKDFCZJAjsD6HItEzF8Ge5bYxlStbhrIJeF6TDD/liJKCxcfxZfThNOEHSn/OL3
         C00V1iSmSAiWZTW4bUHwVGEByebxOccdrN6QUbgyZdqN46bLT3yPyubIonWJ1x7hbNbd
         +w7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762389612; x=1762994412;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NkU2FfTGJiTCARoq1SWVEP1uooasHwQC6BBNqtcJeJc=;
        b=lTnJtR3buLIGBBQD4UvI9rbyC9JU4HJbbSBSbjuW6U9fWsSK4Dvdg1oUv2LsrvSev4
         zWLNxNNPlIJAqOM+nItSu2ASdnBHGdwNKcMrJgGql2mkA8XBUithVostBn1HNN/Ixf8l
         XI5W3P6x1pcaJ9NMGI75GC1rN1vi7uZlOUmuIb//bYlDBt5tUcsgCIS+VukJT9LKrwdl
         J9MDkaBbFyqekX4OiMT1Be5G0vp+4NiBYQGQHVsdIkvVBfKC7swhlIGjXRh8+fp8ycLA
         PA5f2mXfBHcwKrIPh2Ax9SuogNGVpigld1zvkCy59qLAT3KOoHtsOFIiVHXa28DU9VsE
         CMig==
X-Forwarded-Encrypted: i=1; AJvYcCUbhXj58mSOVszlAN4N00gSs5UgdZTGwRqHzgHwXiPvm7VOKL0kTALkaCsCDLXLNK9d3WXLISL1LQrX@vger.kernel.org
X-Gm-Message-State: AOJu0YzHg5i9oofeXdE1TJUHKs2iekwQ5UIdo1jg+ddC3wOCEOCqA/IG
	XIjazRi3pZ4DP0wbEAKEkTaM+N0WtaubiiivFxO1i4HUuVdXklH44dOHOlrA6zB1n6c=
X-Gm-Gg: ASbGnctxiLGKj1ud+dGVmttRo19uyH90y90Z2+ZEKfiChIOEVjRPiGM0aSQ9cD/Ifvv
	QFHFUxLU+yE3HvS35+nOQSxgETggZFgFocMmKev8Gl8dmu4mjoLWpYx2/OOLwMIRa0DLpcewh3Q
	rkoXZeW734eCMeO6LRnC/5Ibh8zGdtcZ+JDrUTQZjrSITbSScQAPzw5XWnF9gR9ylieRfuT5Rb5
	lCOBSJ4/wZ7GqKbSzO1LHoQbQmpwRYIZGoMPfhlvj5lwX92wI+zEX6Fb+eS2EPgq6fBUcuh/95N
	FUTWvVa7tVxYEFOBE8ts4B+AHWEec48mRq78Fo+WMusNCBrTqjvqyAxP/JrsvpidfMl8/1B5cSC
	IswEiR/H5t1PTAIMc2h5kTr4ImQwH4YAJA3PovED8PfxNJVW8piL5My0YOWSAYbx3TuLK8jF8ww
	==
X-Google-Smtp-Source: AGHT+IElJ2Zmd/6qjx4CDLzUHtLcy82LmsapEHCX/tbNElSc+kGmtRslt0CXVghdlIDwLr/630JIWg==
X-Received: by 2002:a17:902:ce90:b0:296:4e0c:8031 with SMTP id d9443c01a7336-2964e0c8139mr23358505ad.17.1762389612288;
        Wed, 05 Nov 2025 16:40:12 -0800 (PST)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29651c7c5ccsm7482495ad.57.2025.11.05.16.40.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 16:40:11 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Tony Lindgren <tony@atomide.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Schiffer <matthias.schiffer@tq-group.com>, 
 Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux@ew.tq-group.com, linux-omap@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20251105083422.1010825-1-alexander.stein@ew.tq-group.com>
References: <20251105083422.1010825-1-alexander.stein@ew.tq-group.com>
Subject: Re: [PATCH 1/1] ARM: dts: omap: am335x-tqma335x/mba335x: Fix MicIn
 routing
Message-Id: <176238961131.3045323.8626140069542181620.b4-ty@baylibre.com>
Date: Wed, 05 Nov 2025 16:40:11 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-56183


On Wed, 05 Nov 2025 09:34:20 +0100, Alexander Stein wrote:
> 'Mic Jack' is connected to IN3_L and 'Mic Bias' is connected to 'Mic Jack'
> Adjust routing accordingly.
> 
> 

Applied, thanks!

[1/1] ARM: dts: omap: am335x-tqma335x/mba335x: Fix MicIn routing
      commit: c1d5c2026969efa372b759aefb2f3e63eff29aa3

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


