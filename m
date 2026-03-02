Return-Path: <devicetree+bounces-269911-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mIbyG49rpWkaAQYAu9opvQ
	(envelope-from <devicetree+bounces-269911-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:50:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A6F1D6D61
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:50:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5222C301A2FF
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 10:50:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7A1035AC3E;
	Mon,  2 Mar 2026 10:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="jslYeGON"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3751359A78
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 10:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772448633; cv=none; b=aWapzSPwc9sR/2kkDQqJmvOCt2Xys6frE/z5DYS3bjRCPwI29cdWp8uORf2N1Xj+0Uvhd66WWgt2T9oBFqWQYvFaHeQquioYST2qQmwb2qKKpxdowlE3Se4WH6Te4nJs84sZre7alIwlneXT3F/2D2Z3BO491N7GrIVvFtpGWEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772448633; c=relaxed/simple;
	bh=9bxMbM7mFlV9f4RAAhXlkjX34it3Khg4vmAogAbhbZo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Av32+G2kgqmczScYGPEshh3bZM3P1O3rBSu/zihQBwZ2JdhaBtbseHJ1oleu6+6PelA4EkBK9wTR35YvssKK5AQ2WzFniVRoWIZ0n6PAN2BQoWH1oh4aDtnW4OLiDonDtWieFRA/EcdaG4ctSgGTHfvXJoHEJHMRUwF53Y90TRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=jslYeGON; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b9381e78a31so426439566b.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 02:50:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1772448629; x=1773053429; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5UXVi5KrGAHXfY9KZhVckbPLTWLOqhGUCqeRbt5GfFg=;
        b=jslYeGONl6vBw0Or2NFtX9gOwyiWY7DuM/R3Io28yHnmNC6aLjZ3e5pNv95BHtea+g
         fuOIhSHXXoyCTZWLt6Qdd04oDRo3O2Gwocz8ib7PhMe118BrWya5lbkMy+QUkOniNQE7
         LZgXOjDcdHXLS0EhCIbSoXywl124tOhG4OhNR8P09/mfQYMt69dyZFFV7GiXK3vb7ZB/
         cHrIM65UmvP2DnhO6wPqRJPO5MrAfjXZkbwQ0MBOKNBcp4RQofatr9xw4smFwcckfkgr
         IT7IOywN3wPjOIRWJfTAOL+mq95K9QYCPIeCCRe9A9Tor/T1tCoNRqi47A0VPICvxf6H
         We6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772448629; x=1773053429;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5UXVi5KrGAHXfY9KZhVckbPLTWLOqhGUCqeRbt5GfFg=;
        b=pdj4s+OJuCF0Ymt5AsFE/MvX3Fq1SGrbeSnxriThT/8RFpMQs/0vSMSIs0kl50+QmJ
         Z/gdeylgr/WE0ARho2AEJyLs351IDdT//A67OIrUcgKgeFhamgUXdxuCVNrtZcOPHNpV
         k6WIwBSY7J3/xqTWPqTmNojjZYOm5Xxu3FTnXQLAAjCTvMz74WSZ6IkunZkVIL/BJ6tR
         odK/px3sVx02yGL9lDxQBspqjvvaIWe46dC/Pf8v39DhgePmLr/CPOxvGGK+FlN670E1
         6H/VCOnWPuqxNd6Ll6Lre4vH63Q3yhWHGRLWbBvM1zDg8+3yXhpwouY68KZuZPvucE++
         GXeg==
X-Forwarded-Encrypted: i=1; AJvYcCXQyHbSAA5vy6zzP3sM8SOpxOZHb3riRme2Was4zYqpFBRPqpSeR2YeGad2Les0Pgyo8WKYSxNd6Ctj@vger.kernel.org
X-Gm-Message-State: AOJu0YxRvAhGJ27atjOQ7Hrt5u7zE6nnycatl9RmH4r0mAOxJMUrrpD0
	Gstqs5kfPNWTXK7xO5KnqfAQursXk+U0JX1zuJM18Io7XOY4K3vgnVY87XrEL4uUQU8=
X-Gm-Gg: ATEYQzyyu2Yg7Sw/RH3k9UuEHYf6cfUnPY/I1J0aihQX1aLLWmkzD76S47P2AHDJq3K
	/1lOUSdphJULhp44pAfmyR3X1WfZEFwH367Ao7v4jTkWskB1eG7gkrXP2NhAUmpRFZb5LvLOpPp
	hYUztqL4sYS83KzpfHJDntxu+DA6mEIjrlH+asJyOcdA2AJUhuDTfj2O4ixDU315DInzDez55fr
	10UDj2OXhWexeqCHo7AHtR672vpDe63qeKzcDjr3WI4vRmaj7OTX7jpfZpeQpmcB6xuwXibbGXz
	iVKoW7qFBVqx+uXTGB421pVe1sxsfZ/8bMEw5hLNf9eowaOwcTJl9oBkpsHJ1Glczro1UVq0U/o
	jugfm2H0ghDSJzyZdiHzCJ8A3fqMJBk8YYZbr2Itrx/XgW6C13ijTP4mGmixfjxrjav9aqRppXa
	mChtt06T4ynAT7oBQDbfqkVBynI0ya369Z3EajVp103owqS5yyL4ygjiDMCIsgjZT725K8Uqa0X
	zZNOLSugw==
X-Received: by 2002:a17:906:284c:b0:b8f:ae35:cbdf with SMTP id a640c23a62f3a-b9376554a26mr593398166b.48.1772448629103;
        Mon, 02 Mar 2026 02:50:29 -0800 (PST)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabbd98bcsm3511769a12.0.2026.03.02.02.50.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 02:50:28 -0800 (PST)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Date: Mon, 02 Mar 2026 11:50:26 +0100
Subject: [PATCH v4 2/4] dt-bindings: input: awinic,aw86927: Add Awinic
 AW86938
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-aw86938-driver-v4-2-92c865df9cca@fairphone.com>
References: <20260302-aw86938-driver-v4-0-92c865df9cca@fairphone.com>
In-Reply-To: <20260302-aw86938-driver-v4-0-92c865df9cca@fairphone.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772448626; l=1245;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=9bxMbM7mFlV9f4RAAhXlkjX34it3Khg4vmAogAbhbZo=;
 b=5AJIgaZcjs8SFi9VrDwLO0PSnG39onXqNSyDYMzkAUmALF7AjCnAqyCV6ybrB5ZPJyrm+dl1I
 fKjZReVm47/BoXuZYvdU46qqA90LpatPHk5pHPAEgYWYV8o459qyJTO
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269911-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,fairphone.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[griffin.kroah@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,fairphone.com:mid,fairphone.com:dkim,fairphone.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 40A6F1D6D61
X-Rspamd-Action: no action

Add bindings for the Awinic AW86938 haptic chip which can be found in
smartphones. These two chips require a similar devicetree configuration,
but have a register layout that's not 100% compatible.
Still, because chip model is fully detectable via ID register, these
chips can be documnented in the same file.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
 Documentation/devicetree/bindings/input/awinic,aw86927.yaml | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/input/awinic,aw86927.yaml b/Documentation/devicetree/bindings/input/awinic,aw86927.yaml
index b7252916bd727486c1a98913d4ec3ef12422e4bd..bd74b81488f61d72b675b5701b321b30b3430be0 100644
--- a/Documentation/devicetree/bindings/input/awinic,aw86927.yaml
+++ b/Documentation/devicetree/bindings/input/awinic,aw86927.yaml
@@ -11,7 +11,12 @@ maintainers:
 
 properties:
   compatible:
-    const: awinic,aw86927
+    oneOf:
+      - const: awinic,aw86927
+      - items:
+          - enum:
+              - awinic,aw86938
+          - const: awinic,aw86927
 
   reg:
     maxItems: 1

-- 
2.43.0


