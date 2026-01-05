Return-Path: <devicetree+bounces-251677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 28555CF57CE
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 21:16:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9C4EB30D1BFF
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 20:16:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B55ED33FE0A;
	Mon,  5 Jan 2026 20:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="aA27E9Ci"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220A6253932
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 20:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767644160; cv=none; b=A/aKzdG5YtGWbraI05bKZHhUw6LFs4DOU5pzjhvMT/1V7JQNtm3y0oBtuNJqsltRrwdVibCLOVR6ivSFMpOOTHs8FJguQX2H5DTRzFOcSE15hZ7np0TerlQTWk2JjMEY54rJ4KNKNGQJ271ORqy3Fykdd+oCVLbP+2oUfyL4hpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767644160; c=relaxed/simple;
	bh=abbX1VsVJPRevIUF61MJL1L6G3gNcpP0aq1Q8N/i4XU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=u1AaDNdf+rMWsodgUC9dca8Vt19z82zHhBzV2cBYaeoqSpIE6xUdbUL2JEZ5hRsxKDcwVeRsuZp60Xn7Ky6Ana1SGGW0iFRguWmhvRJNidmdYdnL1NwlALKx+9JTRSWP2B/VwglSUlrdXL+CEC3qObkZ3ZtbkVzbkILNApX49vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=aA27E9Ci; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7aa9be9f03aso298293b3a.2
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 12:15:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1767644158; x=1768248958; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n4A1j9FCV20tzMqxSc/cTUEFBsYsg145InmWCDZoEbw=;
        b=aA27E9CiF4lIoye0AGt8Z5lgfeyZnEQXt6949ySLA72+2fPVEKVRw82zS2uwZ2jGN8
         8RUfIAhM8qWorcXBl4CugWMIMoyNC9nCUIQr8JqTnWkJ4N3ueICQ+ZxIRzw4HHQcuLH1
         whlq45Mw1BcJvDTKeefq+pldBjMuHWoy76Yei6qZ5uBPKl5r9NmBVEddQrVCANKXEbzD
         KZu/U//oV11hlnU0eN+qPAx/zlLqrDRdZYdqIUw+Cq7/IJfH01bt9E2btmR9oOxxMtaC
         cWCOq0unvRvP1lkdG3nCwgucg6nC5AzaCQvnj6rMYXjibtSVZVmIs20By570L/DON+bo
         5rCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767644158; x=1768248958;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=n4A1j9FCV20tzMqxSc/cTUEFBsYsg145InmWCDZoEbw=;
        b=n9Y5U3seS+Ao8QooHEYJwKEQSPhNq5iBCRfDC0LGzSueqlgTYrtmJ9nwzZvSZ4nkpt
         Nb3E5vRBuOZRYm1dnrwUoc+4qj5ccwBLwG0XRxvApgg6D/2FPnvnrviHQM+yhQGYNvCM
         vx9zXck7594okUVoVA5ivIvpJaPItH362HB/oMDHErDWd9/l5xfgjVpItTkCaT3y9jNi
         ZLUTDgdlbTJEOkXXMeROmFdnrzycFyHr2cY7Y7xsJgIqzDR6dkspnU8ZxlnB/h2k+eap
         1wvUx/bLlFFSlc/AgD5mF7crbybLfSQ9G/y62VdLV4RR6zzrUwRTe7o/nLl9rXM5FBvY
         m2xw==
X-Forwarded-Encrypted: i=1; AJvYcCVtk293FQDQ4r2jytXIYhycqIaZd1UVptsIpHRbxjEidNnyTEBylEeqQ+pPemtDK1eMHuYvrBC2O+Ys@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8DNou4FE5TEHhceqvRJnsNl3YjZ4m8vXUclQ2wLrm8jBectoW
	TxJ1WvQChIiccN/02k1OLAkj/3YYvhhf+pmQLhFYVGOIVjTGscUTiLeh7o2xh7H7h3o=
X-Gm-Gg: AY/fxX6azOaePes2Ov6xhRRNwlkExrATewx0YIuXYoaFRP2fX2NnSHX6e/DDArxLJe3
	Hkbx8cJ30z7/Y1q5NYGyB+28VtkFrtszfGnnQQmW+qiJzcHZ/3tPM02Rcjx6Ku1EBXXP4ORZ+9y
	sAlh7d50OKwjalXvKXsGQkaM0HZYM3QmfiTfM8eAan2jUeJnEn+sqZiaU3sYzjSLTxcGiYMz/hU
	QqcVk5BKQC3bWA+kksjxX1mPFPX7b7+b7vdfqDa7M35w5iljGzEWHi+2WVC/BEXr7Ynj4r62YAo
	uldcRFgfr2tFaqNImv3uMqMtLwP6hbypUpY3FYP8Gat3qn634fLIRXzke0BnAdjczfTCkbg/wca
	SCqBaM04dPilpdfSL4mP/+sRGfyJW5OebkBVgr9jV4vJ2/QHOMjttXFwUJobQHl0lSpnIKBpTQS
	zmn0HchM9KYpUbT7AKdfw=
X-Google-Smtp-Source: AGHT+IEq2Gdrm4NNU9ao1/h+tjsQq0XYw6BDGhH5Q1XiLqDJPXhlhYXs7yiXVMwcH8M/2RQK3C6CCA==
X-Received: by 2002:a05:6a20:9186:b0:366:14b0:4b07 with SMTP id adf61e73a8af0-389823e069cmr330805637.67.1767644158295;
        Mon, 05 Jan 2026 12:15:58 -0800 (PST)
Received: from localhost ([71.212.208.158])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c59e755bsm21273b3a.48.2026.01.05.12.15.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 12:15:57 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Kory Maincent <kory.maincent@bootlin.com>
Cc: thomas.petazzoni@bootlin.com, Tony Lindgren <tony@atomide.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
In-Reply-To: <20251204092346.1076836-1-kory.maincent@bootlin.com>
References: <20251204092346.1076836-1-kory.maincent@bootlin.com>
Subject: Re: [PATCH] ARM: dts: Drop am335x-base0033 devicetree
Message-Id: <176764415735.2561401.13339871019893298412.b4-ty@baylibre.com>
Date: Mon, 05 Jan 2026 12:15:57 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15-dev-a6db3


On Thu, 04 Dec 2025 10:23:44 +0100, Kory Maincent wrote:
> Remove the am335x-base0033 devicetree as it has been non-functional since
> 2017 (Linunx v4.14) when the ti,tilcdc,slave binding was removed. The HDMI
> output on this board has been broken for over 8 years without any reported
> issues or attempts to fix it, indicating this devicetree is no longer in
> active use.
> 
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: Drop am335x-base0033 devicetree
      commit: 3d43205d0efb4da3e799e969c92e70e4d9e4d124

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>


