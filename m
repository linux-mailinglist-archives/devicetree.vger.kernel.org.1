Return-Path: <devicetree+bounces-256311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CCAD38AAB
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 01:26:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 36D5730A21AA
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 00:25:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF0FD19E97F;
	Sat, 17 Jan 2026 00:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bfDR9dh0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f176.google.com (mail-dy1-f176.google.com [74.125.82.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E7547E0FF
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 00:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768609546; cv=none; b=Zq4wzFPyMKBN00bHaRHcsB6qyEdDS5J0JwYT6XTFcUDm0I3i/pAVjCjAGvigjxPEhDbLTMFh2r4P04BhNqORtLQ6KaQvyX9RW4DcqGkjgAaPXMrERxb9Zt/Tu3M6gbHsSl6w8xOBNhmf9gesj67LXbDoCWM53UL4lJNXdI99JmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768609546; c=relaxed/simple;
	bh=Id75euKpfQTJco8yENL5IWArmZd3XiPG2kUkByIZOUk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gfz9r4ePzY030vAec7ghjP/ysTlOMsPilMOygtO5kBzBEgUycY+FSv0x1sEaShuTUXTQO6GrSDRBguQG8deA2iG9SCMfF+8Hpa/2PHYjP9Cvj6gMMfLdLORdPkBF5Qzs4nryEqJeEIBMBEKU+OXwNaloP2lwLj6GjM6VpG/9gFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bfDR9dh0; arc=none smtp.client-ip=74.125.82.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f176.google.com with SMTP id 5a478bee46e88-2b4520f6b32so3735388eec.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:25:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768609545; x=1769214345; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cs/w5dukbECq6vP+JVY/PT3LY1xl+bSBRNaUMsBTQvY=;
        b=bfDR9dh07Ax8yCTUpMajEXGrrxJvdyZl6MQIkskM2fNP3et7b2njGJgjGUlc908qbk
         b9WLI6WMyMA18iOAi+BM5A8abDMKOMGM4j8XJTOu5KvO7YzS4/LkPAWn0eNzqtX6hdVu
         rZblcccOEJXr6NdVzSc2lpdeTTizyNf9apFtYL5fEwOlRHvZ6fX+k/kqIBK3mKQTk2eD
         BIjgDXiVes6u27kFXovWrbI6kshYWYc6nDMbq35+X1XNLReJMfE2tmChjqlYeoqxTZWn
         I6EXGragJ2eGeSmccFmuALCUel7GnL6ZX0Azy4n1G+gWRYTZzYcWuzeYvVmJEgcD7/Re
         apew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768609545; x=1769214345;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cs/w5dukbECq6vP+JVY/PT3LY1xl+bSBRNaUMsBTQvY=;
        b=m5SJEGEuWbeSBXiMqvsmmdizbEYoi9f1Jzozhohu3yPBrZOc4bqwqonsrwlV83+0W8
         UkRDKtf2FKvxAkPjg4mdiArSiJjh8+6C6iqiXXEUwoFExXF8c/yEGdmaaMaxYozaW97Z
         IukOJAd1oThK/pCmxO5DXJIsTO0h8XLmvUvyNwNShaFesyu1agC43bOa6E6GdlrOgCVs
         CAhy9pSbzMJOugbN7cDBDNpCh6YGTFz8iJD/i6IoFufqwOrjJhp486nk7jEoBiCqpJBN
         5JGu16eSAJuDxoRm8g1XXNWDWb83JwhUxJsNwwlbcRRqTYXkWw2VJXcOWAfVWka31hCE
         cIfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWvPrsf62LED4i7+IOrh4ZXolzc+zbCDD2rMTbF9we0TWsYhjk3Hn2tTJ+eP7FxTO7j2F5cbLiIWaN3@vger.kernel.org
X-Gm-Message-State: AOJu0YxUGFOcveJFAHmMWISfYhi3BOt5XEzxeD9ehHHWlMRzbQSwhE/z
	QLbJF+0i+gZNCpetfYv0j55QdRqDLplxBoDV0pKN3QgJ746pW6aPCmLW
X-Gm-Gg: AY/fxX7Sbds+i2TsuEgKC4yLu7Z2lGc/3WnXU/4rByNLjHhXyD29laL1P8/ns2ISxJs
	oJbrj8pYbTk9Npe7mQ8oFniNxU5sKAHQcQzkC1HI8thaJg7MzOuVBijkpEqifDparyI33r0UPht
	XejNEm5y9UEUwq9xNLOuV578i0MJTlvayNyEomCOpfa2Vb6FHIf7hbbzTiJy+GZTg5e6W4SJjUH
	s/tDtyGhwUc6KbqRTxj4fuQ+VIOlGqZK7+phOh6VvsW17uUVaFrG5T2tlgosUulW3mhVHZHzaet
	ZYzuhL56CUt3gMenPydJsj/JAmymDbe0yFgnGMssvnXWLyFDaIboBoV0fn1RkYxGuHjxqh1xojr
	Z+GMmw5dM5BlpHC3bfLaOQ93gGbbw2keq2MsAgiyaqVCJQwx2t5SW8YoXX6y5IV6CPFd0cEN4jp
	Glu5TlQiL35P7jazAxZIvwxXxZMkxD2YsoAG5E4VtP8LRVyMb+6fcGEmHkmim2Mnmf50QiOtVf1
	yFSNzx28pGBgZgovA==
X-Received: by 2002:a05:7301:2e87:b0:2ab:8ef5:df2 with SMTP id 5a478bee46e88-2b6b40f0c13mr3046636eec.35.1768609544724;
        Fri, 16 Jan 2026 16:25:44 -0800 (PST)
Received: from localhost (p200300e41f0ffa00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f0f:fa00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b3682540sm3944277eec.34.2026.01.16.16.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 16:25:44 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Mathias Nyman <mathias.nyman@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	JC Kuo <jckuo@nvidia.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
Cc: linux-usb@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH 0/5] Fixes to Tegra USB role switching and Smaug USB role switching enablement
Date: Sat, 17 Jan 2026 01:25:33 +0100
Message-ID: <176860947663.1613073.5692699224170959766.b4-ty@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
References: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>


On Thu, 04 Dec 2025 21:27:16 +0000, Diogo Ivo wrote:
> This patch series contains two fixes for USB role switching on the
> Tegra210 SoC, as well as enabling this feature on the Pixel C.
> 
> The first patch addresses a wrong check on the logic that disables the
> VBUS regulator.
> 
> The second patch guarantees proper ordering of events when switching PHY
> roles.
> 
> [...]

Applied, thanks!

[4/5] arm64: tegra: smaug: Complete and enable tegra-udc node
      (no commit info)
[5/5] arm64: tegra: smaug: Add usb-role-switch support
      (no commit info)

Best regards,
-- 
Thierry Reding <treding@nvidia.com>

