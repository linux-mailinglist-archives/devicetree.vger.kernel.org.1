Return-Path: <devicetree+bounces-255020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FA3D1EAA6
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 13:13:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69C563068DFC
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 12:11:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EEA835BDD9;
	Wed, 14 Jan 2026 12:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Uvq83CeI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6984D396B70
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 12:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768392679; cv=none; b=FuwT3XilPoopAeGZmVyTg/+tUfoyVtsmhUh2d2GOzAyHLlX/dDEeHu5OHrcSiH0Cgq4oM0a25oLOmx4LjIcqQIF3c2CxkSvOaOuVhC+H++yB4JvgTposwhxqudCAaOXrOh8/028t3kE5LsfoFy7jJ1K8eUcKc8tWPRbrCPKe/oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768392679; c=relaxed/simple;
	bh=Q8+aCVktvN+k+LF5Or1yyIaQsFuaxEPr6p7EXzbo45s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=lWbA+ZaP51ov6asNLrsT8aYmb3R2K9M54oG8nI8m7T9kEyguKfoYq05i/cJt7aJbF49IbLaonVEMV3Fvv19Q1mq0mlqlvZ8yWkUULHqAVB4vyAPSXLdbMZu3nekhr76uDN1xlGdaBpyOSzf3yxUGN/OwzoG9Dtnv9PjuilGAOkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Uvq83CeI; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-477619f8ae5so64183205e9.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 04:11:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768392674; x=1768997474; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bvNQSaYKyUim5tFkK4HAPN4WA2RLqZuiV376Fz2XMpk=;
        b=Uvq83CeIaLi+PNOl8AtyzbEkCAeF9z8cNGCEpq0enVOoscBpWXEH9UBeUDHpCdBpYx
         A6uBP5YAed97TE2wYdOSnTv3ApClZblJR9mYGYHQBjxch5DT+DHZDVjxKoySu8MTnvP8
         l3yzKD2gSV8/O8nP1ytUTPoXK8KnBZXorLvGvayyMwWWezRH+9Tnqggw36UiIJgad9DZ
         R4+IP8bqLTaP76rF4hndMB+v5Aq+7N3he3Brl8gmnSa14h/sgMjhu4JZAbGGcD+bE1lL
         P15fOIa/AvK2JLhKTLvVwovDPUTjPvFyZAdf8OJdmTXVGZOtgZrP6VPSJOXpSIsT5W64
         XvYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768392674; x=1768997474;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bvNQSaYKyUim5tFkK4HAPN4WA2RLqZuiV376Fz2XMpk=;
        b=uIHiIZy5E1Gg3staPl/KXYQe9D8RwP/GicKUtt5yeNnnDMQIt1MFATISZoD8fXdlNm
         5cF9/fAzlb+CWYoHcSGidWFONXrRKopufjnH5Hjd5jSLr3tE2/PFW9PlXaw2GDlTmSmw
         7eo6pchH5qz7IBmLu6aO3eja8SA7MYYJtQNC5iBwDWpEKQLLq0fayz6HWEiX/e0SfRZ+
         SG9Mb3ayn4k/alecn4AIxCafbrbHL81MIg7GJM5eFoPfENIprHsXfM8+am7F/sxWCpGE
         ujHt/iHb6VZB7CEnyE00Qc008WO/UJDJbKK6UtIxHZXVCqpuMWfHXqAFI8nhFFY/MZZw
         JwDQ==
X-Gm-Message-State: AOJu0YxI6ZF3zJa5A/vvYRSqpsereu5vx+sTOKifbSMI6eG3QaQgic+n
	slzCJh+zX+wMGjnF8EM50sVgZzYForUXeZR3YIDdtNsS09h9nE6tz1u8dRggRWM3yEk=
X-Gm-Gg: AY/fxX5PPp9EtNg+oxLWDWSyamC3STUpmZFUO5EGaDmz7EMHNRaUbkWrt8xVk1+QkvJ
	anYEOjNWNF6iKvzcbchlqbUfx0y+btcsClAc779iF6v3/Ou8tHFI6o+nDXk98cLa9/gVgoO4PzM
	NISDkoKQvzU2/IipwrQPNCEaXbaB0DR1vINap4o07Gmay5v255pdbCFZaUmGaIR1LLHw5TDvGJb
	pXsXmrX6k2C8foCNK7MQ9h36ndNP5O43a2545+sqZwy9inp/1D/YKS1HWMyAmCDMZQxQ8cRs8nF
	ZDTcaQ3SbdoPrSDM1ZxjCdOsHrJNQPn5dK9RI90wUu7WaHVY7FZ+t2jbL63x6g593h7vGC2yTpS
	jS4ck8b89/kmGwMH5rio0EDSniLX1QibKhg7WwN7sCRRnNenXoomC4CAiXEE564tuFWBtdqzWw/
	tLp91s4dkuFlcOwSDD5plOboSW0qfpFtU=
X-Received: by 2002:a05:600c:500d:b0:47d:3ffb:16c9 with SMTP id 5b1f17b1804b1-47ee33917d1mr23304285e9.23.1768392673795;
        Wed, 14 Jan 2026 04:11:13 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5fe83bsm50158222f8f.38.2026.01.14.04.11.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 04:11:13 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Xianwei Zhao <xianwei.zhao@amlogic.com>, Nick Xie <nick@khadas.com>, 
 Jerome Brunet <jbrunet@baylibre.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260114-amlogic-s4-mmc-fixup-v3-0-a4d3e136b3f2@baylibre.com>
References: <20260114-amlogic-s4-mmc-fixup-v3-0-a4d3e136b3f2@baylibre.com>
Subject: Re: [PATCH v3 0/2] arm64: dts: amlogic: s4: mmc clock fixups
Message-Id: <176839267313.2837299.1195775819800428515.b4-ty@linaro.org>
Date: Wed, 14 Jan 2026 13:11:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3

Hi,

On Wed, 14 Jan 2026 11:43:10 +0100, Jerome Brunet wrote:
> The patchset aims to address the issue raised here [1] for MMC B.
> 
> While checking this issue, I've found that MMC A and C also appear to be
> improperly described in this platform's DT. The 2nd change fixes that.
> 
> To be on the safe side, the MMC clock should also be assigned on the other
> SoCs. More changes will follow once things are sorted out for s4.
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.20/arm64-dt)

[1/2] arm64: dts: amlogic: s4: assign mmc b clock to 24MHz
      https://git.kernel.org/amlogic/c/86124a8becb43eed3103f2459399daee8af2c99d
[2/2] arm64: dts: amlogic: s4: fix mmc clock assignment
      https://git.kernel.org/amlogic/c/3a115d42922cffc91b303992eadf220111d66c31

These changes has been applied on the intermediate git tree [1].

The v6.20/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil


