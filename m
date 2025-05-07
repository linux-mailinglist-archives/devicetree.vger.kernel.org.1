Return-Path: <devicetree+bounces-174571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2A1AAD9B2
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 10:09:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE5034E222D
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 08:09:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 822D5226CEB;
	Wed,  7 May 2025 08:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="YnV3zjdf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA2D223DC4
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 08:02:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746604930; cv=none; b=TKh7PpEbZ+gttyMNuqWvVcjJNj1bQEmm30BXlU0lvFDpjhriFVEC1f8K3vKpXD6OskXeRKl1k+h31x8+Cl9SM6bgUYe6rCS5VxYuFvQq4D++94qX9S7bo0rlhZknjuieaO2wkCNc8UM8jUXqrwEiphH6Cs+o0mLF7w8YPBmltgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746604930; c=relaxed/simple;
	bh=4r9tJ+EcKTSeTDqTruse8d4E3SvZHkJ5ztPCJLWlUSc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=s2Zr47N/nuEfu6ayY5Go1AYvurSDDLczutsZmP6ETV0qSAkTs/dKqyjPUPWq7tIM1eQ3N2gDx1SSTt2lFzkrSgzgefDCqWEkE2OOQ5KJY/XGxOzzXJH6cY3uA1tVuJ2m1nEFK26uX6FM5JgxXVHKcdjpySmCNRSBdLqWNFGdysE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=YnV3zjdf; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ac7bd86f637so129415866b.1
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 01:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1746604925; x=1747209725; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q+B51z9x2y4YummWOIXlfsBUwS8WF++0rEKHeNnV0Us=;
        b=YnV3zjdfl85huB5rFrTm7ILrhcQVcGxJqJVQJwCQl6ZGbIl8PxVn/ZghhjUZfXpoB8
         o7THwPVwhuwbQoyp3tnHbTfIiubh79ibODjk8+R9J6aqB0HX0wrAmlFfdFZhYuwrHwYS
         6oiFAhF2qGd9FVdNBAs9QoYKXQbzxIQ4OLTIur5YPpxwK6rvctw/7W56A9gcAe+EEd14
         1bYqJko43S/UJTVhLXw8XSD8lW8VuIr/NnaL0C71olo6w560hsrHHQVfy/meDifhw5V5
         A2G8Zf+fWSjoXEaAGYLj2aorwyBqfg+HuXtvnq6RWzsV0gaQqKpA9i6RCUH2FnNBhcjF
         1jpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746604925; x=1747209725;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q+B51z9x2y4YummWOIXlfsBUwS8WF++0rEKHeNnV0Us=;
        b=FMZ1ckN3J5Sl39Yx9yGGJ60YGVSWCtCVcia7+5U0+bVYkeYRfi5nqmfwMnrD+q5/nQ
         42NmnecKmpYWFvKy0KJHLXiN1v7PcKibUbfTBrc6qjSKrWeoWdVL2JiCJI8SOFKvA0+p
         QMwwnpMrApDyCoj5dsCsmTWzrX+0f3wEzF1MvC9mQLe7UZ3CnX2HU8Nt7XiuMj0YMJ5m
         vr1OW/eql0MIxdvGsB9xCaTTm4YrH5iCSg5oEfahHRwy/2NQb4X74bmurrHY0ckqfXkd
         c6pAKzQ7hojaNUW3cmBrPmPMpl5fbOPzTfLMDb7L6JHmh3xyEDW7mXJt8yU+/qwWsFsG
         sYXw==
X-Forwarded-Encrypted: i=1; AJvYcCX6lPYiCWmPAtiHoD8FGEDnQ7HQJZLNYmrmpxCcwdVqWk13WB3Z0Kf1JvTRermMEstqUme+LdEZ9VB0@vger.kernel.org
X-Gm-Message-State: AOJu0Ywf0/onWdmhAuUCAJVXl8ufkouMXB9kGDGEea5WJS3Dh+WneUI8
	zTlbL7FYSTehGNoiU6PF3cMWYggWOGQYOS6PUMpwDa5115DS2hSUBXnl+dz+ubE=
X-Gm-Gg: ASbGncvR6FiwMuEVg/x9EOh5mlwfRC1ki7y1zMUaUx0uJGVADvDTf2N9Sus4paJLjWC
	FLU348gh0ziJvQ/2JAnNnxkE52DuWqi9tRojFwNx1oVO2J9Xy6ckbz87dL+ic1o1lmu4lsMmJj7
	cdq0iD6Cdn7X1AVYpy+IghjXlO27DxPvnF1CMVJ5sT0DP3bVIWpD7fze5bllXl4x5fppCEldl4Z
	0ktbxOllasRuydiSgzley9PV4bvbSy4PSSjgcujBwZloqt8wDWmCziwQIIuo7U21pM0700RV/Nn
	/PpRtEhEmp3c2neRWBxwgJ3iJcpEt4rMNhDnqhlWokl5v/EFncNyoDa50ZBOWfPeRDaeUbYVobe
	NHj9OcYAwLUF/sQ==
X-Google-Smtp-Source: AGHT+IHM5j4LY8EC3by1L+VBxZrB2eMd8q7F5KhX7WQLdSlljTQckz7uR7Y8+kHuY5+YyPBVE5qv7A==
X-Received: by 2002:a17:907:8dc3:b0:ad1:d0e7:a698 with SMTP id a640c23a62f3a-ad1eaefad5cmr195699266b.2.1746604925541;
        Wed, 07 May 2025 01:02:05 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad1894c0310sm855236066b.88.2025.05.07.01.02.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 01:02:05 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 07 May 2025 10:01:37 +0200
Subject: [PATCH v4 1/5] ASoC: dt-bindings: qcom,sm8250: Add Fairphone 5
 sound card
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250507-fp5-dp-sound-v4-1-4098e918a29e@fairphone.com>
References: <20250507-fp5-dp-sound-v4-0-4098e918a29e@fairphone.com>
In-Reply-To: <20250507-fp5-dp-sound-v4-0-4098e918a29e@fairphone.com>
To: Srinivas Kandagatla <srini@kernel.org>, 
 Banajit Goswami <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Document the bindings for the sound card on Fairphone 5 which uses the
older non-audioreach audio architecture.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index 4e208cb7f6c61adfd4b687227038d275f849480a..57f62a228c262f38e703816efdcf443355052619 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -28,6 +28,7 @@ properties:
               - qcom,sm8750-sndcard
           - const: qcom,sm8450-sndcard
       - enum:
+          - fairphone,fp5-sndcard
           - qcom,apq8096-sndcard
           - qcom,qcm6490-idp-sndcard
           - qcom,qcs6490-rb3gen2-sndcard

-- 
2.49.0


