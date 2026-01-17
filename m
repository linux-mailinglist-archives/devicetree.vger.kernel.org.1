Return-Path: <devicetree+bounces-256316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BA8D38AC4
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 01:32:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EA8A230754E2
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 00:32:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A32E1A0BF3;
	Sat, 17 Jan 2026 00:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MsVjPYrA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f53.google.com (mail-dl1-f53.google.com [74.125.82.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D2370810
	for <devicetree@vger.kernel.org>; Sat, 17 Jan 2026 00:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768609974; cv=none; b=HSO5P+xDOvzTBRx61tuObHyDALhqrJE13SIf8hix3nHUetnz413s7kfTAGYuJM8HjdDYdjUdm1DtRDw26Jfcq5mdmuF5cYvge3BBrlQ6x6ltvUDzzl5+cb6m8LaIpk3wkOjALTk4sFyrzW5oAcF++eV6YB4y3NVAdZk38ijJYZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768609974; c=relaxed/simple;
	bh=kIeB6j/N5+LCrPUbz541JOTO0YZVR1wj0iYYqzqWfrM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gG6h6sarHFXPyMigIEJkidmM+eykTNPxk8Fgh1BftNPgzU0REueFV3xc35zKhbwNwOqW/xJ56/MKLEVwHQKbKkHOJWMURA9/SMflq5v5lWfJ9FqEtf23qZZsErx89h5v/LWcMR17SnjgIP1+YfGOJDTe+MPof3FANhz3pz0X2T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MsVjPYrA; arc=none smtp.client-ip=74.125.82.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f53.google.com with SMTP id a92af1059eb24-1233b953bebso1782228c88.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:32:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768609972; x=1769214772; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7ytNYdk8UK+5QDwMF9YKV8D+8X+AVHJEWRr0kX0nOWE=;
        b=MsVjPYrApOq5VNP9Rsw4q5tYcJyts68cJ/25I3EedQOVF507p2EYjnbngJO3J2Ip5/
         LRX5EhmA6qrgkEgFeQiG1QEpiDCwYB7kgVeZKe3e7eQjx0cgnFAB8/QGnsICbJt/cL1k
         VpcXBX5ikKZuiz9sCkGZwZ4LH35yprBoBam/MF+9Uij3k1gCvP2QIQPuvaVpBxaPgXtH
         w826GNuVZW7Ju/LCmC44Nlu3edxgVhOOTnNWfJBOUkGPFbveAxgSUeLWyLEolK+Xh27z
         GZRQWbaoU6aUpOVbRy0Q070uOp0AWSzT0UhQaWDj/zrll/+y9Mc+6twH4X42BrQEGcwV
         /pgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768609972; x=1769214772;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7ytNYdk8UK+5QDwMF9YKV8D+8X+AVHJEWRr0kX0nOWE=;
        b=Waza4cFETGRpiNGVn8DMynrVIz3HNeUMrt1gtaElCoI1BmTz9uPcDNhhzkICTHXLXb
         g/cdYhxAmMpkmAB/DgnQA3GuxahSDTp4FGJqUqDQ/WdPJHSL5EtfDQGi4v1pPw6VXAFz
         sxQhAfWCPk6DUK9Bjynr54mH3EUrQ5QKxWXoQ7VQxkj71YAECfQPMwf4ehETUG5rX1x/
         tGBf3PnNNslPcl4JbqMqgoxb+ziuKm22nBPCljBOM886ftM9Kvx/CPIGsxDFsV+RcstG
         pZRL9qhCyQrA8lfDcD8t15lfVsx/N7SZ+u7tEF4/DVy7lNVCMnQUn+mOvGk1HgpCl5Ld
         Rl9A==
X-Forwarded-Encrypted: i=1; AJvYcCW/R6KcrBTLoDuJshfbfqBPKP65Mu3kSuklLhswT5/CRz5d6glF/gGwsdsViA+dErdrsZ1ZfrE5zP3L@vger.kernel.org
X-Gm-Message-State: AOJu0YzB2dwLgE7bwC9WRxE+NJZHZFOwlspaCoV2KaoN4XrSAjFB+6YV
	p8zNczRXtgvQbetH4TvgpDseo0/N88oywNSN3UGWyFAXZxCDcqkDMzuq
X-Gm-Gg: AY/fxX51jaFZL6yw7kQ58YdPyraMdPYVL8L1ILHhgDhgoLQ9zBEc0QsPQJoBIOZOudL
	xmo3L8G6wAmubSvqkjX0EEGSwBg25773i8PSdFz7iNyg2s6xZpX+y7Wr6Wly9f6UqvYyWIg+9Vf
	OawcFDAKq7G2EteYRUdyDHdd+Dlv7PLHMTnS1BragWX4Ujl9ANZO+OtVbyw2O5vuwALBo/0akwW
	QNWDo/8X8pe8eK2bBAg/UnhI3sVzj7eQjMFWMkP+lRHmr05XGl5K2EVR6QldLbEQYjhNRGFEA7B
	yIGzyNdj5zWZmdTcyojYonulfE8sV8KgijMlndZWQ39UhdN+nvmQoRR6/W5MDarkoOzS/fyL+jR
	4f2PjrqH7oyrJpGyeHCyiKNSwDM5JjerwpvYLSlpJA8WqmLL65CndboxgP0ZsL7b7HaDs/B9r5h
	2Q4bsWOGY2AJsJlMdvdx+4/bi571UsLHQeia50BbmDUv78QZgwxxArBCvqt652/KGgtvUGNTzmW
	h08igU=
X-Received: by 2002:a05:7022:619d:b0:119:e56b:c752 with SMTP id a92af1059eb24-1244a73c91cmr4320247c88.23.1768609971804;
        Fri, 16 Jan 2026 16:32:51 -0800 (PST)
Received: from localhost (p200300e41f0ffa00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f0f:fa00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1244af10e21sm4822622c88.16.2026.01.16.16.32.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 16:32:51 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Sowjanya Komatineni <skomatineni@nvidia.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>,
	Dmitry Osipenko <digetx@gmail.com>,
	Charan Pedumuru <charan.pedumuru@gmail.com>,
	Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>,
	Aaron Kling <webgeek1234@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-staging@lists.linux.dev
Subject: Re: (subset) [PATCH v5 00/23] tegra-video: add CSI support for Tegra20 and Tegra30
Date: Sat, 17 Jan 2026 01:32:46 +0100
Message-ID: <176860995606.1697785.9777722896876428268.b4-ty@nvidia.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251022142051.70400-1-clamor95@gmail.com>
References: <20251022142051.70400-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Thierry Reding <treding@nvidia.com>


On Wed, 22 Oct 2025 17:20:28 +0300, Svyatoslav Ryhel wrote:
> Add support for MIPI CSI device found in Tegra20 and Tegra30 SoC along
> with a set of changes required for that.
> 

Applied, thanks!

[01/23] clk: tegra: set CSUS as vi_sensor's gate for Tegra20, Tegra30 and Tegra114
        (no commit info)

Best regards,
-- 
Thierry Reding <treding@nvidia.com>

