Return-Path: <devicetree+bounces-250356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBEBCE88E5
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 03:28:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A664F301B2CD
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 02:27:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C6712DFF19;
	Tue, 30 Dec 2025 02:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cY2u0zxS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028A42E06ED
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 02:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767061679; cv=none; b=MUSeKBEMr/RPXSS9zs+TKfCY1k0L/AUjY6JMu5xOCqXmQpTZ36CrfB0wmG6GmWXsQFQ6zHs5F1GfpaV6oYfXNxrzXKprqlf0e4kp7ssOMSP+C2XYQ0s5rQPC/Cslahg8ovmMrEXwUY0nlgMjgY8amzlh1dLZ7a8SWlZCGF+htak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767061679; c=relaxed/simple;
	bh=E9hCkg13sMLGfBn5Ay0BI1/P8wO/vHWD7Xt7AEV1nQo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=F8IuY9XRpkDVabpWftP3AIUlYNU9zm3CWJzxJW9D+ufEZPlv54t4S91CCUNKS2tvMFV8C9gneglYpgT+tcEm+ZhfhHBzszdgEPdXnYZe2r7j5ulHHLYhOwFmNVjyEJFN7IZubGaImfp0vo98Wr3qGIFIFlvF5NIXBKMGUotFh1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cY2u0zxS; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-8ba3ffd54dbso1361859285a.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 18:27:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767061675; x=1767666475; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gdQi+fone+BESYBoxIz7XE56ZJgQDpFhVO0ekIamygA=;
        b=cY2u0zxSMpv1g7BKV9kb5fXDgEI+D3aOiSpEQIqQnNwFrN9HXaCL8Dm6JfWcLCYVlx
         FW1b58oE5+Pph0hhBgsoBPIqvSIVXLyr6pZl4Qoeb3eDAFNeAOnhtP+SBlVXHxOO5C4p
         CxWc1Ji+cWdEsQbDxP7tLTnW7FfAAUn4dt6xd5Wg9c22ou1ITqR8ruaCVlvhB/nV1s0+
         4PqHli6QWvc0lasR4n5ETJRcbDqlEgKd2NkQAoT6Xd5jPsKKcWhTkIETv4BJsgXBSAnV
         9gfBrAnkL1UxH/+Eceguf8vmamepo7nr+poJaMZNvgHUhsnUHw2WB5ADekvJ36E3fYKl
         kLsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767061675; x=1767666475;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gdQi+fone+BESYBoxIz7XE56ZJgQDpFhVO0ekIamygA=;
        b=EFVrgJ4Xc6HHu2dxAZPz5iUUFzWX2MnWrfWV2YGSUxBR+4G0QHeBUhLrHerr5ehfio
         GVcXFTk50L8ot3k5QQX344F4zN58TfDqQgvYQcFeK6mNhD6CSQ0PLdmMQNbL82GFhijy
         uE0AIiN0Y3PoEPUgMxGnoM37Wquy130xiKG7fZJ64VmiOa+7F3QAqdLY6rbQKXtg1Zyh
         7gL92jj9SrcBb7ZokAByBfidPGByGbW+J8EjdBs0I9gvY/ZziJLvhHWisqbelNLE2FWQ
         QL8lbdZoCMeSVH6z8hbnWtQeVzI6Xr3P8EVRJUtbUHumOkrw1YUYpW28kH5iaVztb0dx
         32eg==
X-Forwarded-Encrypted: i=1; AJvYcCUzBreA3NmosS+0mILnD2geBPjqTz00uHLfzJqsl6IV1UXtbfC5HiNLo+R/BwVP1vSZyI5a4qR9aLLb@vger.kernel.org
X-Gm-Message-State: AOJu0YzlLoHm60AX2YgpQWG8W9+Mi3KvxrM8EJ3KCQ+j2PDmewl9F7Ye
	6U2cp6HiNI76Jubh+7G2hqRhFH8fK8P9RC9lOboawCTLc2KAl/g2vLJB
X-Gm-Gg: AY/fxX52rbmER+IglmZpfTDBY2Pcp25XK736eZ7dZdAmIbfnJUMjw3wEeNKovEWHjJ6
	mz+HYbaJ7XKrphWX5iebJdMa/3p9jAEmV2tA5JJ1pRHCqEAFP1CChQjBV19C29B1T0WukbP/36s
	D4WoSepKNOjesu6/fgm7QgahaofKnnuusiGnPa/nDGH9Alakxy+7Ipqlcvo5PIQJ04VYKRuBV2K
	K4ITWY+FOaHmKIJS901FuZXlkHtQkAsOkrWzzjLvE0Ph1AfNZpMvdHoTNFWM+26K9/hDYiUR6WT
	zlWq2F/oeSczDF/j7GpTipkwaAeIyIGlj9j2fmuByQY78ZT4FZ9iF/7HSlP9ukUbuFSjCdeGGVv
	LAMDptMSy1kgBseatX6KdojtBCmEQaL9NAJmfhYQ6ZYK5+SLNE44tQ+NBk4A3W1lz/lCMijPqwo
	Snafv1tCxrK7ERNkjxw3vY7/UgiVb8BgHoZfi99GVaYe364PW0ImLhULBVeVOV4vhI/MJOMDKSe
	Ms=
X-Google-Smtp-Source: AGHT+IESgq4DW1/APtEVb+UkOUyGElCFnWbvcmi8z4IBQ8xiY1CWJijDJv1f3yoretJFcVlC3IlW3A==
X-Received: by 2002:a05:620a:4403:b0:8b2:e8b5:1ea3 with SMTP id af79cd13be357-8c08f66bfbamr4929958685a.28.1767061675239;
        Mon, 29 Dec 2025 18:27:55 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c0970f8572sm2447446985a.25.2025.12.29.18.27.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 18:27:54 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [RFC PATCH 2/3] media: qcom: camss: allow endpoints with no remote
Date: Mon, 29 Dec 2025 21:27:58 -0500
Message-ID: <20251230022759.9449-3-mailingradian@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251230022759.9449-1-mailingradian@gmail.com>
References: <20251230022759.9449-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The camera subsystem is part of the Qualcomm platform, and common to
devices of the same platform (minus the devices that may omit it for
some reason). Different devices of the same SoC connect the camss to a
camera sensor with OF port and endpoint nodes. In the devicetree, the
SoC dtsi is responsible for defining the camera subsystem and ports,
while the device dts may connect some ports to a camera sensor and leave
others disconnected.

Currently, the camera subsystem separates SoC dtsi and device dts by
defining the ports in SoC, then using the top-level &camss label in the
device DTS to connect the ports. This is the standard, although still
disliked because a typo can cause the device DTS to define the
connection to the sensor in a newly created, unused node, with no
compile errors.

Another option that functions (the camera is exposed to userspace, even
though the approach is disliked), is defining and labelling the ports in
SoC so the device DTS can use the &camss_portX label to add an endpoint
and connect. This is disliked because an endpoint node is also labelled
in device DTS, so it adds clutter to the labelling.

The option used in SDM670 is to label an endpoint node, but also to
disable it. The device DTS can enable it to connect. This does not work
anymore.

When Vladimir clarified that the SDM670 camera subsystem isn't like DSI
because of the disabling, that gave a possible path forward. The option
used in DSI is to label an endpoint node in SoC and not to disable it,
but to leave it completely blank. Any endpoints that have no remote
endpoint (i.e. endpoints that are disconnected) are skipped. Skip the
endpoints with no remote node to allow an empty endpoint to be
pre-defined.

Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Link: https://lore.kernel.org/r/e9dc1a6f-156b-40aa-9209-2010464d54ed@linaro.org
Link: https://lore.kernel.org/r/488281f6-5e5d-4864-8220-63e2a0b2d7f2@linaro.org
Link: https://lore.kernel.org/r/95704b74-52e7-4831-bc93-d4d7aa32736f@oss.qualcomm.com
Link: https://lore.kernel.org/r/79e2bb5b-9bca-4712-87bb-e0371b36bf50@linaro.org
Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 drivers/media/platform/qcom/camss/camss.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index fcc2b2c3cba0..e9f0926ae92a 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -4092,9 +4092,8 @@ static int camss_of_parse_ports(struct camss *camss)
 
 		remote = of_graph_get_remote_port_parent(node);
 		if (!remote) {
-			dev_err(dev, "Cannot get remote parent\n");
-			ret = -EINVAL;
-			goto err_cleanup;
+			dev_dbg(dev, "Skipping endpoint due to missing remote port\n");
+			continue;
 		}
 
 		csd = v4l2_async_nf_add_fwnode(&camss->notifier,
-- 
2.52.0


