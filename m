Return-Path: <devicetree+bounces-236021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EFFC3F500
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 11:06:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DB8034EDA59
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 10:06:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 990A02DC33D;
	Fri,  7 Nov 2025 10:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BlTw2xuf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE9C01A0BF3
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 10:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762509959; cv=none; b=iO9Rk0wWHBa8NO7ZSFq4V+2SOYQxoIq/rz4Az15ekJVd8+OpnVQd9UT9ZxvUDBxkl7kIqgEniLKsYsksFkmkaI1GIl8Lz9oCyx9tQyJ3467mGVo3QwVR4ZcfLINKH7O8b5Z8sCk275TqDEjVhzI+wmqtZIHJiLkzCkMRupNYCoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762509959; c=relaxed/simple;
	bh=wlgwRJif/bPNXIJtp6p6Md68ujm/+iD14HvBkWngO1A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mznp5X5EXvtyZVgxPNuLamdJlgn3pe43POcTVNXZ9qCBdE6cEXKAA84WLgtlsiXvYjECfQsYn01VyIQWulwaQkCBoaChNA8oCoZ1SsvCIdThr5DCeKkGZB6XHvgZW9nsmwg7lHHLUQUeMf1GIFzkMAT+fc6zeSbKWBZHRdGWPwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BlTw2xuf; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b729f239b39so121905066b.0
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 02:05:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762509956; x=1763114756; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wlgwRJif/bPNXIJtp6p6Md68ujm/+iD14HvBkWngO1A=;
        b=BlTw2xufFrrxx7w/rXoGXXDzpLQyoKmij9gcnn83MiZ43uWfEoIO9fY3we4n4q/DPJ
         FviMBZ+7N0jfKK7zDVXQsTv22C5Vx9Jm9i1Eqn2sCgigrwV5DE019oIYGK51fIKQOOzp
         N9dPhVU9MVgyg8dbTNolQsvEM1HvooYqXwMVUlwd6Cih2g5r4BVGJ0kJJADmFf5tdpdQ
         xZEDqJoCg+ebkNA76UBRmhtgnsfx14LHxWidQgzbvnZ3no9kCuXLdUipcLTRC6GOt0jZ
         vKD+bL7ZxNt22MlEwHe83N9TMdLLUg1YP11djX5qn728lnZ+6M2HNOprcKxxpZiMjvV0
         Klvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762509956; x=1763114756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wlgwRJif/bPNXIJtp6p6Md68ujm/+iD14HvBkWngO1A=;
        b=Xx4lRr+XQ9g/F2bT2QHvmjJoPF/Stu/jciXILSDO+g/VgfqOrZQuhEiTD4SRHBsyZq
         /HCk39Ve1Y0HjVML0KEXZXFwAQAZUsQV/51ZHWC/CNx/5G3dSNkKIsbWWT+K84ZerMQC
         uqEeCG6sHSu9tqoRlbAvlqOtGuip84gFnQ2bXuHySNDA4MBmjpVMRLm3tdKMDE74fmRF
         OrDMIdWFvi/xa1VocEf4pysARHgjvFsHCfZ8gQZ0SJCp06RcOEfLbHBG+RR5PSLFER9B
         8VbvKYz4Oop3bp0bjbXloR4PX5p5T3dhHuWzdol87bSJZLv25U/TKiS0FeRdGTuSEOvt
         8eDQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHBJ1YKO0a9QJPjtJtXOx0k3c45lvyFkAlmIxw9Nx0NNu7a/RADMp2FqOYO6JpO/mY4XBu8KussWM4@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4pT3ojipohAflHLv27hpAU9VXYtc6CUfz1ey5/D3fIRCNAL3y
	Dq4Wk/qSxd9kES+gXctj/ys465MX9EMneSHXvSVE/INhLyliAsIsXB/c
X-Gm-Gg: ASbGncvZHB8CcSCuLonHYYe2p2W+7qQ2MNtSY/c3Wy5p2UlqrrpEYXDcNl/vfgCuTQ2
	BTjqcyjVjFXjx3s49KgQNd0y11LLaQYEiMswhck0yR4ztFUnqY6wB9ND1BBfHjA7q9jSZ8mSnA5
	YIi9Cyv6JeXcqEIjnKd2i8+K4+ULTrbsQsIxviAdVoG6Ow/MLaBOSHTDXe9ATVbMtseoE0oBm98
	+QNXymr/PZ5aOFVl71LwgyNXiexoB2EtE1YeM3+3e6InPsri2QomMltQtzkC2ZdSAJQab+Ju0kI
	BUQwVSdSIYcd++iIN+S59JYB2lSjyqZm2r8uLYnNco131/z6L6MHtVotrrsSd7b3awcSIAegvxc
	fiAM/a6u6A6cQX+RgkMPQbHwXGowShHrw7gYOtpc7nCu7fZyZAEwiE0T5uvxbJodef4Q3v8d06U
	oIEge2Dzdo7AIS5NAqOMDBqEMOmTQiLoIs+rZgoEwE6RsK8g==
X-Google-Smtp-Source: AGHT+IFvXZEQLFBWJXoWj4mJGF2Z3vEqlg+8xryGG1dnbNbyx8bnU4qwIxsnj2FIbfYmbqf2RBl6Og==
X-Received: by 2002:a17:907:7205:b0:b71:60a3:a8b9 with SMTP id a640c23a62f3a-b72d0af76c9mr119381766b.29.1762509955891;
        Fri, 07 Nov 2025 02:05:55 -0800 (PST)
Received: from localhost.localdomain ([176.221.203.198])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bfa112a0sm203914966b.71.2025.11.07.02.05.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 02:05:55 -0800 (PST)
From: Jascha Sundaresan <flizarthanon@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jascha Sundaresan <flizarthanon@gmail.com>
Subject: Re: [PATCH v2] nvmem: layouts: u-boot-env: add optional "env-size" property
Date: Fri,  7 Nov 2025 14:05:29 +0400
Message-Id: <20251107100529.1303-1-flizarthanon@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20251022230740.200742-1-flizarthanon@gmail.com>
References: <20251022230740.200742-1-flizarthanon@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi Srinivas,

Friendly ping on this patch. Rob Herring reviewed it on Oct 26.
Are you planning to pick it up for the nvmem tree, or would you like me to resend?

Thanks,
Jascha

