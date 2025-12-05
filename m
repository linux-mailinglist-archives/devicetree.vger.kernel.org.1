Return-Path: <devicetree+bounces-244754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D9DCA8622
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 17:30:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A1F723026CD0
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 16:30:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E65532FA20;
	Fri,  5 Dec 2025 16:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="STVK9w5c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6A4312810
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 16:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764952228; cv=none; b=btp0qgoHX+GAEBT4VSjsjOrpCTtmXtS8Zy55fbmw0FIxT7+nWWNvEydxGDJutYOdY8fR7aPAQnrzjDNWqWtWkvzZ5c/qSytlWnsqR7EHvFOvGCPLpoFXYQeTScXZ1khZeQMLM0TLHrPCs7Id50JNSh8GbOQAveFMRp9RLA9wYIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764952228; c=relaxed/simple;
	bh=AyEqQ22oQW2AxaUzXlKSXJWBg5IK4qyI3qo453YylAc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gLveE9H0U/D7mioW0HeqXbWGYr04De5S/ljPR8jmmBJTsHH68mRgRscE7e9NE4CgKgKlN+ssOXPumOgCPEi7mns15XoHRVIy0ooNtOV0HOb0Yn+jbZ7CYl/cSNtSOMETJHWlHXrc+lkyYXhL5rCXNiYs7uVgeWicK84XpZVcNvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=STVK9w5c; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-6431b0a1948so4000890a12.3
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 08:30:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764952220; x=1765557020; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AyEqQ22oQW2AxaUzXlKSXJWBg5IK4qyI3qo453YylAc=;
        b=STVK9w5cLpyk0wvAtDA6mFq57i+C7ObStvMny7iv4jPHL6Kge9U+ymwMm4P1+faNVs
         Dey8a+G0a5miSlnbZeQHKYB6fZrKSRENd0iPKbxpeNvJiUjpAbCF1+zDSqwyDtDjH/bX
         aLajfs/FKihef98u1E3msIO9iz3Uxj1YWvVDQwOBFqAuPZUPDBdS5nImmaoeN8Y4brpr
         UhWDggb/wOHM0tmIwaJgMaaV7G00EUK23VveW43LIUL0G0U/yI3UP/JPcjRZqGeh0cu0
         xpoAhAy5LV63rzdCyEUb4k/HTg/f19o82gtxvf0wg1pasJZWV3G33o3P3Ol0wLJUZgxw
         zKRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764952220; x=1765557020;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AyEqQ22oQW2AxaUzXlKSXJWBg5IK4qyI3qo453YylAc=;
        b=ZqP3lybzmYTZmNg6vTUiSIxib0U+J3Qz3PhQfJxG2fUE5UJUOeAtPLEnJAzf3vgpXT
         Qv2xYGc2ipU49WxxkiP0c+puZb6c0cIUrWEoMypiyGEEuXwoBj0XjIx2JtHU11Rp7viU
         u6NzlBTHww9arHn4X41iFUSrKqhxZ3Q4VTYLe9QIGOe7rDQMPvhe1w7V25JB9/2p8TJQ
         jKYTxxt339uivUxvvjx1mNCfcddYtsqXRdYyyh7guspEhwQsSfkomzvOBj7kT5qERItL
         WjHpJyG7mZt+zW8NZmylIKUcPk+sKOZzxe/hrrDn+SKiZnCesdr/m1Pu+5lUuh7LoUhN
         UErQ==
X-Forwarded-Encrypted: i=1; AJvYcCVRFtUsbvwJmPS1dnuMGVULkkOBS5XSbKrHlFX9VWOCY0kV9EeWOV++GxNb4P1o9PC8r/RSnN15pELr@vger.kernel.org
X-Gm-Message-State: AOJu0YxI9npro+Xp1LMW2XKrIfaifEdKb4N3xhIcMimq2Rqc4D9W5Zfi
	tcnIi5Fgd7th2FFC7+12XeFkNy+TO+bJkMjIMyH+UFlvt0n3I3Nef6MA
X-Gm-Gg: ASbGncuSMXD37gSvriK7pSZrKZLBih+ZwCy8iCpQr6Ehj/SJslHNUqtlpo1K6pIaGWK
	Pldg+cdGCF8cfxZntFtsVy4ZOSAhwjL4WPElS5u6kNMU15p80KnVkFmcqkamTo08UoLUp32+21I
	CdbNHx2hDES5Z3rhPNEiyT15s4twVJv9Fn80o5zvhnOTRGDXFbucnLBMIWg7iEEcl6mOMnU9uo8
	8UUY7Mx7+zhkm924DarOEKl9eosQGJOX0pzx2ACitvHn3F4fnq7NVu6XcJIZTF9nv1EoBWspU6L
	cGeoxJXrbw3iPTQV4t7ugB47Xv5L9xN4UB/jIoh6DwrIGsBaPLIdgIBMWu/4BYO7qIQsoOCfGRs
	6SuUI4P1BRE/94iyVpr0epGKWArIZjSYqTUF+3sxeej+nXT+pSab7WGx7kUP/Eby0n0vwBXWo/6
	y5kBFeEybz9Hs98S42pIk=
X-Google-Smtp-Source: AGHT+IEeDHPpfUgYJWf2ll0+1AfsrzSpWoZY5OWeKfS4OoSjSHurxojt3+dBMiMCGkDmWisqS+lV+g==
X-Received: by 2002:a17:907:9625:b0:b76:d882:5aaa with SMTP id a640c23a62f3a-b79ec3f0908mr670737566b.3.1764952219257;
        Fri, 05 Dec 2025 08:30:19 -0800 (PST)
Received: from crusty-box ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f449c375sm419408266b.24.2025.12.05.08.30.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 08:30:18 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
To: konrad.dybcio@oss.qualcomm.com
Cc: andersson@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	konradybcio@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	phone-devel@vger.kernel.org,
	robh@kernel.org,
	xerikasxx@gmail.com,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: msm8939-asus-z00t: add battery
Date: Fri,  5 Dec 2025 18:30:14 +0200
Message-ID: <20251205163014.51395-1-xerikasxx@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <509d5d7d-b7a3-4dc9-b3e6-c3e52abe040c@oss.qualcomm.com>
References: <509d5d7d-b7a3-4dc9-b3e6-c3e52abe040c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

I assumed only data for 25C is necessary.
I'll add the rest of the tables.

Erikas

