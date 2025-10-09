Return-Path: <devicetree+bounces-224922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B3990BC8E85
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 13:53:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C54C51A62405
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 11:54:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 550942E11C5;
	Thu,  9 Oct 2025 11:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b="fVC3ezhF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 899782E0B64
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 11:53:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760010825; cv=none; b=SLzr5rzCBlNV3vYYttdUbZifDpbYTmojFJXRrZLKkPsnMcGyeqG15/bmDmQiZDnHcoPCYcVQgID0pqzm2H7YVkyaBS1WT/Kyp2EPwcyeHp5XMRgHMkHuC3dQs1er6pVA00918xepsP0UjVZZD5MfB7w4nen25adyt8SRF9T8CGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760010825; c=relaxed/simple;
	bh=MZtpDSAeX1Ovl9JMxKVz66NBtei7l7fHOjWklvLJYJY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jIqMQYREojEiGitGriIgFl32ijLh00PjsyLdVDZFy0dfKrjdPypzl+rxounX2pJ4TBJrcwuZSdYPg6Anuu1bgVe1Ym+ANiITN5DmO5hNmt60pa+XPfbCqHj3OW6u8ptMBdR7v7W54rDJ4u9I4MSSwDPSP2zyXfSct+Cz/yMS2ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk; spf=pass smtp.mailfrom=thegoodpenguin.co.uk; dkim=pass (2048-bit key) header.d=thegoodpenguin-co-uk.20230601.gappssmtp.com header.i=@thegoodpenguin-co-uk.20230601.gappssmtp.com header.b=fVC3ezhF; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thegoodpenguin.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thegoodpenguin.co.uk
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-46e6ba26c50so4643575e9.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 04:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thegoodpenguin-co-uk.20230601.gappssmtp.com; s=20230601; t=1760010822; x=1760615622; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0YRwRsv2JGxHdPcrSfhou6/e/A3dW1zrI7PLye/j7/c=;
        b=fVC3ezhFMAmm4mdKlTYoHUvMgTE9yOcVnYxkneKBss7ZPznB9uBLiewHo21f0IDzQM
         0dOvhsO3MS6WJ/lDPMhwcc3Pp5HlUvNs9iGUfxN9EYxfsOKGMVRIA5h7Kc1R1xgR2RPD
         foOWFcYHKjn3s88Yto5jqWX05gvq/PideV/z4VXXE1bpXarlhT0t38RFPtOXWt/SyfUk
         FaN3MsurnaIDF87tZdiQ5uygO/erOIZsLfIXdbPdgorcWyzjUcF6YhwaJPUntF87zP44
         4iuBzYXKpEumhQ8B2eJxhdHEEnNxYMQGdlS5X2LTHcqaBRzPFcMDQIrGqIh147/dPBpY
         T5GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760010822; x=1760615622;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0YRwRsv2JGxHdPcrSfhou6/e/A3dW1zrI7PLye/j7/c=;
        b=w+MIqn4OQGLGg+UkjVidhn9DceUREVNid/VcgCZBnYh5++O8lHuQPfJ9UCIu6A74V0
         yfnCUEybncmqZ/ITIfNBmllSKQJJYoKgJDPKJckCUkfGLTW9rNUHWdBuFb9rmXF0tcY/
         UYzfRSRsVbPZK3TSolhclZjbwRCSp3chbyIqR1wi9ngMk5bYlppBVHIHgs1jYSZbW4Kz
         I0kJk1tzhU7IUC9XYZks24Czl50Q65pakkYY0Kp18KOdp2qyRubteKHETS/gyhAzbpER
         k8ixk05j62peCDxyaRA1yUihu/5j6b2dc+Dp5EMUoarOZ+ngJjHa7FB111eJuBhGsY8D
         juGw==
X-Forwarded-Encrypted: i=1; AJvYcCVSM2WqR7viYVdvaSW9OLs24tGeHTIm/tEB67hkQm4o2+GvtpNQc2WoYCUNCGX5zTrv73w9OTKxAKFh@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6KvXBUgOnHkyhiKsoaeZEwQPvMvqYpxdV1ABQB0hu2RTNbxDG
	UBImA8WQUpb+MMnAX9ODSOp3GjoC2FqcKLWHGS2ox5nva0oAglRYMTExU5Eb/DVS4JtgyM2yBRL
	OMvu0rUPDCA==
X-Gm-Gg: ASbGncv2C1+VhOjxMRsGVb39CRs9wVBxQ5sZkpfqJ5gTij0JqL6X+4FHElNlMFXOqjF
	2gZgA25UK6YhemmIXdmYJraKMmofqoOcmCNCCBuIdSoMitMAV1fltEAAk753mRXsCZ8owB6MpDr
	O/eUO8tJAGr/5+2DJZb0Cv6H7gfN4EaU2VUHAfNa2Uuz5MBP8fU9P1BxuAA5w+hd3SMIP0/r9RC
	y3PEC5ExjKd4mbD88L2rQlBIhfI1m/5Fs5JeMIUHcHC98P106eGSzD82kDqXqCS1cS5icsvgYj6
	MedTziNUbkAkx7DzXmaoSIWlImU2vpc6oJO4qi3dtdEoFBCKn4aPunceRZrPgu0VDXl74veDu/E
	k1o9YxslVPJDvtdGH09ttXwujdF3AjBPe/D8wxY+ntOBjPbPzzDa/jrkLdZ9+7dta
X-Google-Smtp-Source: AGHT+IFw0EStqMGoTf5b92X/Qw7EMLyDr1bZXyNDvXbXSyKiugbleDYUzHxfRXnql6r985fgqP+cfg==
X-Received: by 2002:a05:600c:6304:b0:46f:b42e:e361 with SMTP id 5b1f17b1804b1-46fb42ee3camr741295e9.41.1760010821854;
        Thu, 09 Oct 2025 04:53:41 -0700 (PDT)
Received: from hapmop ([2a02:c7c:8a3e:8c00:2f34:274b:ef90:518a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46faf1841aasm42330685e9.18.2025.10.09.04.53.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 04:53:41 -0700 (PDT)
From: Harrison Carter <hcarter@thegoodpenguin.co.uk>
To: robh@kernel.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	hcarter@thegoodpenguin.co.uk,
	jonas.gorski@gmail.com,
	krzk+dt@kernel.org,
	lee@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org,
	pavel@kernel.org
Subject: Re: [PATCH] dt-bindings: leds: bcm6358: Convert to DT Schema
Date: Thu,  9 Oct 2025 12:53:39 +0100
Message-ID: <20251009115339.2340708-1-hcarter@thegoodpenguin.co.uk>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251008015210.GA1925508-robh@kernel.org>
References: <20251008015210.GA1925508-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi Rob,

Thanks for looking at my patch. There's an issue in the patch anyway that's 
been noticed between the patternProperties's regex and the names of the 
led nodes. Here it's just led@... but the nodes are named thing_colour.

On and off this regex has been done as .*_.*@, led@, and .*@ . What is the 
preference? led@ would amend the led information to a label in the node. The 
latter option is very promiscuous (but not uncommon in bindings), the former 
sticks to what the examples are sort of expecting.

Cheers,

HarryC


