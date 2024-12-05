Return-Path: <devicetree+bounces-127509-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BECA9E59BF
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 16:32:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A6D17188557C
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 15:32:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F23EE21C9FB;
	Thu,  5 Dec 2024 15:32:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cornersoftsolutions.com header.i=@cornersoftsolutions.com header.b="Xu36Xfcp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2852E20D4E4
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 15:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733412752; cv=none; b=bd4Rn5S+AWwXL+Eshof8RAjY4AIa9I/OW42CqdyszeX5MI3VsRM6wamtgUPQk85ehD3yFiny/4wbIHwFC7BiE5U8422htC4fpWxkO1oIwLnvCST0D6PzeTyVbBlx2W6VSUHN6gHG3EsYfh7xQvfpK15rSNvzYkBvWOJpUPuyqFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733412752; c=relaxed/simple;
	bh=RbLc9FFR8wF5vdi7GcDZl88v758ckVMZlXxdmckY0ts=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=Jn6bcmqIfskKUwgba4p5K3IxtDYBeRN51fm+XDEBkot8MHmGv/VHWjiE+9RMKXnnO2jeTM4hb5hjjUFFERnlHjgFjUFDpW63l0ddzYkUIDu7rjAfVhkdCYmVg/DBgQyH0oRXfrgtu9dXeWUcIogDuIM1g+/uYf2wQ+ldzxlcn4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cornersoftsolutions.com; spf=pass smtp.mailfrom=cornersoftsolutions.com; dkim=pass (2048-bit key) header.d=cornersoftsolutions.com header.i=@cornersoftsolutions.com header.b=Xu36Xfcp; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cornersoftsolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cornersoftsolutions.com
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-29e65257182so647287fac.2
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 07:32:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cornersoftsolutions.com; s=google; t=1733412749; x=1734017549; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mSVWv3kzGyP7Ixr3DcJKWQ/Cs0NKKVxGUdtaJxvtNOU=;
        b=Xu36XfcpVRRV/h73WFcs2W1seMy/Plmi46O0rOsIZdXEqEX8eiejQMtMZWBMoVD+5M
         4HsR+/rN3KDMauytsqMFzo+aAipi1guI/Qyqm/2zaBICtkqAX45FF7690UqzUQDlbqQE
         Svy+iH7nUS8ezrBLnU/2+h/Z1BHd3Z8Ejp5MStzvcODrFd0MRKsl7zlEcLPPIU3K0/AI
         IjM8goce/YBwxGnXmOm/HPT9T2bzLXp/CvbtadwWDS5Hf9KsSpEfFvtFEU9ZtpaSPHNz
         0DTotzdCmMV+THSpvouedwhve+0b64cnzYEcOiln51hT/7cLxsO+Q1e9/Hki7NHYnoHH
         qxTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733412749; x=1734017549;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mSVWv3kzGyP7Ixr3DcJKWQ/Cs0NKKVxGUdtaJxvtNOU=;
        b=CRvcah9v/4EikwqWLMSGMMmOJ2MtCvSF1wWaMnzpQuRWxCl8WUROTBsD76YSQqcONu
         qqsM/rcaimkmd3kTrhjLS8VmiEQDigJT/9C5fagE7h+TI6goeBCvcMIj1CC0w7Ah4IMj
         l5xySuTof+2Z+cYsVK7Nl7lUhgkOWwRnlAHyziyArSLoSPlZccvMBzoszjgdj9k/NWQe
         cWb+6P/a/Kl7zpsQz/sbmZHL7kfKi2DjeGfxajQ05CPbSNQ9/8UapH7LcBmEpwv+06bT
         UXDad1xwl0EhELHjNcdHr4MBazWFrFv9WWImVZCadK8l7D0cw9qMrgHl02hW45p4Qdx8
         f+gg==
X-Forwarded-Encrypted: i=1; AJvYcCX0OZWUiRaZieaDup/w5MKf26yq1FTLcIiOkRdBn6JNTok3KpHaA4Crl++B4VOpwQS3Nu0qH+EUAazS@vger.kernel.org
X-Gm-Message-State: AOJu0YyGbTef0x/+qtuCqSSIPZrH05VRQ3vVQmUhpiCY4vOvCSGZFHPt
	WMjXqpDNblO64ZB/oPMBKpVrHnZXSUvEwMfPy7jlfVhQUmhFlANE4YzVQkWzcsSmb2Tf+6/Ix8g
	zUX/X8w7VwYRUf5QHiYH25anB3sTPPkDccn4705IbOIr9Fx2YMn4YHQ==
X-Gm-Gg: ASbGncuxG2y/Dc/h7NQr5kwCXR9wJIzB2O2pBDsKoDyt2tsn92v88ZoaC2gRD3TvLuQ
	zatIR3rAa6wGY+bfYVYQiF7eHSxcSaDh1
X-Google-Smtp-Source: AGHT+IEXh3wkarBLzAyKqYC0kT/Y8r28C1neLlKp6rQpRD5NvnZVxaGgz+SOmihpuXwnZlzhFMNga5hrHKjeRZiwzUg=
X-Received: by 2002:a05:6871:606:b0:296:ee2e:a23c with SMTP id
 586e51a60fabf-29e88560c9bmr11677702fac.5.1733412749132; Thu, 05 Dec 2024
 07:32:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Ken Sloat <ksloat@cornersoftsolutions.com>
Date: Thu, 5 Dec 2024 10:32:17 -0500
Message-ID: <CADRqkYAaCYvo3ybGdKO1F_y9jFEcwTBxZzRN-Av-adq_4fVu6g@mail.gmail.com>
Subject: [PATCH v1] dt-bindings: dma: st-stm32-dmamux: Add description for
 dma-cell values
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	dmaengine@vger.kernel.org, alexandre.torgue@foss.st.com, 
	mcoquelin.stm32@gmail.com, conor+dt@kernel.org, krzk+dt@kernel.org, 
	robh@kernel.org, vkoul@kernel.org, amelie.delaunay@foss.st.com
Cc: Ken Sloat <ksloat@cornersoftsolutions.com>
Content-Type: text/plain; charset="UTF-8"

The dma-cell values for the stm32-dmamux are used to craft the DMA spec
for the actual controller. These values are currently undocumented
leaving the user to reverse engineer the driver in order to determine
their meaning. Add a basic description, while avoiding duplicating
information by pointing the user to the associated DMA docs that
describe the fields in depth.

Signed-off-by: Ken Sloat <ksloat@cornersoftsolutions.com>
---
.../bindings/dma/stm32/st,stm32-dmamux.yaml | 11 +++++++++++
1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/dma/stm32/st,stm32-dmamux.yaml
b/Documentation/devicetree/bindings/dma/stm32/st,stm32-dmamux.yaml
index f26c914a3a9a..aa2e52027ee6 100644
--- a/Documentation/devicetree/bindings/dma/stm32/st,stm32-dmamux.yaml
+++ b/Documentation/devicetree/bindings/dma/stm32/st,stm32-dmamux.yaml
@@ -15,6 +15,17 @@ allOf:
properties:
"#dma-cells":
const: 3
+ description: |
+ Should be set to <3> with each cell representing the following:
+ 1. The mux input number/line for the request
+ 2. Bitfield representing DMA channel configuration that is passed
+ to the real DMA controller
+ 3. Bitfield representing device dependent DMA features passed to
+ the real DMA controller
+
+ For bitfield definitions of cells 2 and 3, see the associated
+ bindings doc for the actual DMA controller the mux is connected
+ to.
compatible:
const: st,stm32h7-dmamux
-- 
2.34.1

