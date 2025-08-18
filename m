Return-Path: <devicetree+bounces-205993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E4EC0B2B1AE
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 21:30:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B426D7AFF58
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 19:28:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1631F273803;
	Mon, 18 Aug 2025 19:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b="DYOUSrJ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3284D272813
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 19:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755545360; cv=none; b=aTj5Qq32/4O6UAB2dHJf1PdDiGZy7F4KuR5BDhLApfq0Lgozzc+NP+eiV94FzjzHddxntCLHVwzE27aypOBtHMaQVdJFQx5nRVUFg0nMbsxYkTaqdNx2qEnw6D0mtshe4kESHPxDRAznv5beo6jvevLfMMUQapQrk+d+yM+bZLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755545360; c=relaxed/simple;
	bh=kRzVEa3uj/bg6oWKZkP005NMPIYVxoygwwWt84AO+ms=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=n8Bq+32+797DKRw5TjJ1awxhOQD03eNjrjhl1iZaNEr9LLDL9GoPhGq5kL1NSjP1nZOAgw5RO6x4mHjL4dY5eArhjujnqkcerzfDm4mDsDojFC3S1lC1JdSAl9txLPjx3uDns9Yd4IeY+UcuXUm1hNM0w094GT9Yq+s8EuZFSJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk; spf=pass smtp.mailfrom=pinefeat.co.uk; dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b=DYOUSrJ1; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pinefeat.co.uk
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-45a1b0c8867so37372165e9.3
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 12:29:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pinefeat.co.uk; s=google; t=1755545356; x=1756150156; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kRzVEa3uj/bg6oWKZkP005NMPIYVxoygwwWt84AO+ms=;
        b=DYOUSrJ1oFKFAk05xkH83HD3o/l3IRaqk32XsVf662XV1jNyY5JlVUppoL/f8dJPmu
         HkINMt2CSLF1w2Yrz9T3XoGUlehle9gDYSIZgKMnKA846T83X49tbWn8a92r278vGmw+
         luBu2OyHfXP5ouAZWDezV49sOWKq586kIIgEHbSKdkXCD9Mg78tdmPknCgJkAhnZR90T
         JvxpRVv27VPXenE43pnZ08Hh+8PLJzHMt3NX/ggYeZbSh1glHbnzsJYMBaQekNJLZ1r2
         vy6R+xMgayC59a0uP/7KrNQbBwMpVP/cPs/QBLlN6Rz5xThxqPCCZ1q9jYyYKAsCSefY
         SesA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755545356; x=1756150156;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kRzVEa3uj/bg6oWKZkP005NMPIYVxoygwwWt84AO+ms=;
        b=SDNYnjAmwRFuDI6NdSS+xwrL8BEWSvswdB8kv41Y+sKvMkovgugicrzXuEsZYWYKGN
         qkvD2N8xlSdE092baiNvTtbF0g6NUnjPBnuetncpOIxxH2J91xl614auPHuVlehTSMal
         neI+pw6oU0vj+jEP2pT8mFQbSDRt01a9CrInDAEisEIiV8LgEMkHU+XqJy2Hy+KsjlZF
         AoLuJtZ30WchU2wx7vyMuiuegZZfFlh+mAyMnlJQiMBBsFAkf57kYfZOeMrTeiG/Dw++
         VkVIcZLm7L1sMOPwK3JGX8xpmT2gBbssUeMH1IW7Bap4+TCgSSwwmhKEm9obYkzOG3II
         UoAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWnvHJ/JDquh2NpFgKbOVDwCyjS56mC+ApwSkhZJqcSmv8w47OmleGw/J36pG4QJp9v3SIpPFbE5JxS@vger.kernel.org
X-Gm-Message-State: AOJu0YxXMx7lwjP54PUG9LZYKLgGLWsZo2jeNSzqv8dfrdDjgcIIyDVp
	4Chv3tPovL0nRUUa5jCsGqU+NBsy/4Q1HETINRf27ndUPvx0V6A7UuwX2CFj7F1w8z+UiP8uiaa
	QQoG2MrAXGQ==
X-Gm-Gg: ASbGncuvOqrV1/Kh6apvElIX132Fm8UqMlJL33kGgFpnGcEbYvBqX7wDWtyub2zpIHN
	ST4IF1LBCwWs8oI+QNaebGdGeSlAPwNrqh87nO2x8MI9VygDxLnntUcqk/lsIGuosSt0gDN7lEO
	oCT0wvdiJBVPoJoRwQdhk6zjnpbeKJnVj+/COpT5cumfdlTQIHaaGG2KjrFoepJwCC4wXAtfhKP
	QvHqPtxLRw6JsKZHYHe3S2J7jbxPTCxVuqeCCV5ZFisuNdkR2pd2dBh2StNvDGUutwMSZTD3p4z
	IlkwS+/MqARIQvvAWEYRCpRiZHLm2UWSxFMgoZ/vP1atx5M2/v49OKR6BFe9KRggK/z4sOz1iVb
	I5kTcfk617wfO1Dj8TC9bYsy/aySV3btFG7xOpfNjyItH8pUgIw==
X-Google-Smtp-Source: AGHT+IF9kyuM/7SxTLAYcltj+VM5hsAzPk1pKCnX/Es6jfMyWvT1CYbhhXwEBvZ4yeGfejQ064uTqw==
X-Received: by 2002:a05:600c:3ba5:b0:458:c059:7d86 with SMTP id 5b1f17b1804b1-45b43617e09mr2167245e9.10.1755545355967;
        Mon, 18 Aug 2025 12:29:15 -0700 (PDT)
Received: from asmirnov-G751JM.Home ([2a02:c7c:b28c:1f00:47f5:3f34:f5c7:2ef])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b42a7647bsm10882195e9.8.2025.08.18.12.29.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 12:29:15 -0700 (PDT)
From: Aliaksandr Smirnou <support@pinefeat.co.uk>
To: conor@kernel.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	mchehab@kernel.org,
	robh@kernel.org,
	support@pinefeat.co.uk
Subject: Re: [PATCH v3 1/2] dt-bindings: Pinefeat cef168 lens control board
Date: Mon, 18 Aug 2025 20:29:15 +0100
Message-Id: <20250818192915.11553-1-support@pinefeat.co.uk>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250818-stark-unsocial-96d32a311cab@spud>
References: <20250818-stark-unsocial-96d32a311cab@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=yes
Content-Transfer-Encoding: 8bit

On Mon, 18 Aug 2025 18:36:50 +0100, Conor Dooley wrote:
> Wut? This doesn't make sense, you have supplies so they should be
> documented. The fact that they're shared with a bunch of other things on
> the SBC you're aiming the product at doesn't matter. What if someone
> doesn't use this sensor with an RPi and there is a dedicated regulator?

The supply was introduced in the second patch version but later removed
following feedback from another maintainer. I’m fine with adding it back
if needed - I just want to make sure we’re consistent.

https://lore.kernel.org/all/c1b848b9-b1da-4976-9838-d474394a0992@kernel.org/

Would you prefer it described as before?

> Is that actually your email address?

will change to a named one

> Don't mention drivers in bindings, how linux handles things is not
relevant to a hardware description.

will remove driver mention

