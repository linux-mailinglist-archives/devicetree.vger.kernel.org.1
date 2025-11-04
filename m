Return-Path: <devicetree+bounces-234995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F8CC3352F
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 00:07:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4516418C0E5F
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 23:07:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A42F52D9EF6;
	Tue,  4 Nov 2025 23:06:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Rs1LOw2L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCDE155CB3
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 23:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762297615; cv=none; b=YHI7/SZ65n78eqDwE8MMyKiCbOU11MtJwSXmypKu6fY0u5XLg/ClNxqanIMW5bmXO8PYHsTuOK6q06vUdIv9RUcXoJZLJwJx5G/IkLNu4oaZQihaK4NmDS7OSrFvaio6Er6gPHufRFbp1fvnYry/qaYw26Itzqs6AhkDKn99B48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762297615; c=relaxed/simple;
	bh=QJ847FhBTFOXl3rS58U8cqQ+LD+SFOtAjEolRkbcjsk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=DvOC3x3ihAuAqRVqc9LTYvMMZzjttntQoeo4f30NeHh4KBfmG2tPe1IeuEFcLo2TBV9UKT84pdcj3zgqH9oNVU3I6d2VagxdGI8I0rutjVwPBGch/c6cx7r44s8kdznmM2Um5ya/y4xr8NmkWhWU/a2QpkfIlTpV+KA4B8eO73o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Rs1LOw2L; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-29470bc80ceso4252055ad.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 15:06:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1762297613; x=1762902413; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JksZ5o2lwKHDUecYiEPxGzs4V/o270DnmDoI1y8aqwA=;
        b=Rs1LOw2L+DrT9mYXwC9V31w4hLwnREy+jwRhDIIU6IzfCD4tOH60+2atb5kHS4o6jo
         62hPTPPTKSyR9THHDPkXT4tuO6v1PQj+xU6LQAu2khP7NhigMTT48dOucCQfJz91H8za
         n/RycZ5grYbsrbNzhF3SRRnuycqoZdFqi+p/ZOgmhxEf6DTX6g3Os4K/7O2cIae/logt
         imBNQxJT6j14BLIPlgn1Uy5j/Il1utwrvw0iFJ4Y11jEgo9hQW7KAI7Zkwq2VE8PMbc8
         okRJh7g01wT/ZC1gTXLMg/SS1pZKxLGQd/pnGBfE5ooDs+M03DUemaeqvH7oTm0yUYrA
         +s+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762297613; x=1762902413;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JksZ5o2lwKHDUecYiEPxGzs4V/o270DnmDoI1y8aqwA=;
        b=Br57lNlWCtDIEokcAgS4fpbzoHeqen+FdzCES8gMgpOyw3M0FBmOQE03x1CHsyKkg2
         iPu5zl1riYLBkkv6tiu/5xsAOWNwfHVf8XfSsiMspusjFBXEGZY9BZ8ZCiyvnne67Qae
         qhm3N6e3yLK5my0ibl1oFAf6kmoLIMoX5mwU/W8RuwHnjEF8/SrUF5Zq+z4f8X7JjKXj
         4HBgvzH7bEe/ErGqFy2b3IWhBZzqMnLo8xv5PdLMyhks8OYCGdPa+CpSvyBVGXNc5hr2
         RcIvYjUMY6EneSkMRFQaaqxP8jNhkX7Q4l1IdCFni5xj8lmffFMXOjAbODd62aqRXdgS
         Tl8A==
X-Gm-Message-State: AOJu0YzfDHTh7nKB3BoFyGJ5q1QEcIrhfXjrc9TbPsPqf/vfJXUjiepz
	FUQVz3R4oczl5wKxoN6xxr+hfW1oFijZheNhV4Ag6u0+wfbPb4nMpHrGz3YKpIRulpN0caQm2Vn
	Co28Q
X-Gm-Gg: ASbGncscgY8rO7/inSHnE2VqUoNgL7SzeOqWHtOYfLd6bMx+JosBnx/bYsSscBAg17P
	v9JJb9JXR+wUVtF6RZI8B6Y3SI+GTsJuy0ETKnqUmKI85noUACC0pGHHjOfJEoPvlaov3Gooya5
	fA32UUFW82lGmKLGMjeRcDy973Ma2hw4or+VGPXJS2gXn7r4so56plawXetYswhrrioHhRXRgQV
	84735Wyf9DBtHlPSuLOFIDab75s9bTQPQqewjY59NGS+KWQBxtRwiJDW6PvGkPBaXGtx/0sXiXn
	mIoNPxLa+JNWKdtTZjokFz5dTFGvBBvfAD3HuDwcRddJkdcwx4IKwPWYwlxYGl7xEQP4Mbqp7EH
	B/zFgzB+eB3BeGrsvxpkX4aFZ2sW4JqOsJK0z5MNKdOKeR1PfO/VYD888UZXoX7gATUvK9hzIXw
	==
X-Google-Smtp-Source: AGHT+IHgBsxoU/B15KIiSeBgrpUmGN8tjd9N+/uuPPIkB4RHWM+GjdD2qRRDjV+JNmhejAOd2Mqa3Q==
X-Received: by 2002:a17:902:c952:b0:292:9ac7:2608 with SMTP id d9443c01a7336-295f938f88dmr64337615ad.8.1762297613341;
        Tue, 04 Nov 2025 15:06:53 -0800 (PST)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ba1f87a6155sm3462327a12.29.2025.11.04.15.06.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 15:06:52 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: devicetree@vger.kernel.org, yegorslists@googlemail.com
Cc: linux-omap@vger.kernel.org, tony@atomide.com, robh@kernel.org
In-Reply-To: <20251006093517.3075431-1-yegorslists@googlemail.com>
References: <20251006093517.3075431-1-yegorslists@googlemail.com>
Subject: Re: [PATCH] ARM: dts: omap: rework Baltos LED nodes
Message-Id: <176229761250.2840692.11737049086914044356.b4-ty@baylibre.com>
Date: Tue, 04 Nov 2025 15:06:52 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-56183


On Mon, 06 Oct 2025 11:35:17 +0200, yegorslists@googlemail.com wrote:
> Add labels to the Baltos LED nodes.
> 
> 

Applied, thanks!

[1/1] ARM: dts: omap: rework Baltos LED nodes
      commit: 905664e27647224b2f5f29a1825c3d6bff3fc49c

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


