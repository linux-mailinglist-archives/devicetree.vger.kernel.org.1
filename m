Return-Path: <devicetree+bounces-273179-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOpkBrxyr2lPZgIAu9opvQ
	(envelope-from <devicetree+bounces-273179-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 02:24:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B013C2437E3
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 02:24:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2335D30071F0
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:24:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 530A1287265;
	Tue, 10 Mar 2026 01:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jQjjj4sW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B40284B29
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 01:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773105849; cv=none; b=IhDTFKzqPlSzCzYhEyW3zvu5zTWABsVADYwRvOGW59A8dS0NHDIRX2B5WZ0CmWqEp/BfyWJrH5EMYSycqyiqOZ/35HormafLnsDn435+SoUZjgv5+XLJo0Bh5Rq6b3laKpEDN2yHtCwzBqqnlQIOP6GRnlEvmosGIaFDT3XVAf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773105849; c=relaxed/simple;
	bh=LiQ8EflkNH/uZA+ems0QOL+ZbRGh6LZN4zZMLOj1rXc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CiEqB4guwA8u2AaYFOFDeeKj3Js066hvKd6g6aFsB/OzbfXcg5wB+JUM+2cYiWWI5FSItCv4L6oTU61eT0SbNacjX7jepk7zv+0PUcrDLZDjOpOAo5J/BMGgPCs2sY+nva9JR++T5ZzBmJpUlqivFn9GZ7k5zmhzde81J3Nnhqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jQjjj4sW; arc=none smtp.client-ip=209.85.160.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-5069b3e0c66so171127171cf.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 18:24:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773105846; x=1773710646; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7CeMWLpnBLUWUr8MpkL2IM0mC+LILizg1OzjRtJe76M=;
        b=jQjjj4sWjru06czyKnUE3iPes3HzZgXEDEQ30cZancv4ilEdVBI3v6jCs05RBLz3mG
         iGuMEMGNMDHe+GJ2t3k1WEhZxY9jizavMUFOsfvRdN/nMICVNdg2TnOUExpIiYZueqNa
         4E81sHQVOfDAb+o/447EEZZ4DERZJME9Y7IkTOORQAPKtMNkq9H/D4Zz8pm+dEGv7Csz
         caAjURm4FOsr63oHq0DhXVT2hG4Z1xWi4LmcQxTDS5UoekZtrEQljy5DGYPOIV/81LHm
         QqErcRi/scKh225pJ2sa7+uwlr6J4neKajpR9dbrpJ2JgrjUSmR4J+xTxLzuL/2lon60
         axQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773105846; x=1773710646;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7CeMWLpnBLUWUr8MpkL2IM0mC+LILizg1OzjRtJe76M=;
        b=hnc8OvpGGiwVb++1u7Bv/R9rtWWaZiZcTWEFHTn1LwE+ACLyxVLiGqKB/qFqP8Axci
         iyrHFnEq6S7DHfTdkCJXDSihhroc7JNJ9zrOaSjy+DzISb9Td8h2pcdTVszaLX1ajh87
         WPx1l1m5KndEge6HtDhEJr6/SplS6+SKmxKHv3KGcjxiWbmEiAslaKtxY+PHAHUL2v/9
         thXLM+P9IMZrzazIbP8wajsvndJFX4wi3V8jIDgPmwnURDR2aNweWdHVkgBNNKEVUDB9
         JBl1SAF08x2ZrQ7TW4FbxitQlsqt4S9TKKOa+0F+B6zxgu4aUkBwWvC85gOnLAgRFfbW
         YPag==
X-Forwarded-Encrypted: i=1; AJvYcCU5fnzHIPC9VLcL/gpL5NxxCCqTB7d1B8+VGqe0F/Ln2NPOFPPuylJa8EdBcZRTyT83/22WBtxMLwyo@vger.kernel.org
X-Gm-Message-State: AOJu0Ywhv5QfyFwpbL0l6EgzcRJB5jbO9HX8qQkITwSjRTpxMv3xWQgq
	YeuQBfR3jey+VwOachlnN9rFGJzBnlfseOXLYmsVwgcEOB76VMj1QCEc
X-Gm-Gg: ATEYQzypqr/xfCwBcZli0269ZWblCFheNhvMKmIqGTMuouguu9cteZhwpcFdlv+HeJp
	O5ogTD8H+JI9fG5fyi9+fK04F0B0wxkXBrnS8+s2Z645cJ5vj62Q8UUpOL9lSZ6U3kGzX958J2a
	HcyFGa8msSmJi4WeTFgmpz9rKRsszYh+Q4xz0cJ2zux6iA4meO1Q0Su+w8FwCfnHRScdwmlSFJt
	G9Y622cQ2u7qL3YdcSQDZhLs4nDugE1l37YKfBSb7R+kXyavUPMSDaccHNMfX1zwpnqkgQAQeJi
	h8gnLiFHZG13xS+pXZsc1uJ9beQti09tFDRGAW5Dm2tf4BV9xXH0zW+O8Ft32BnTru7leRJzvGh
	w7INCp6zIheY/HezrzcI6aZfxXevdXI/uyWhdlDbV3I10VGvsr8w+L5nDBDPHoxVFk+B/rSM6X3
	UY2O3W/tvEtEuXaMtZuH5oz76yBmomwA+H3nlxQ7pk6aMOe6CUzSMCbZHDRT/3MpeLBVP9of9zK
	uiFKnIgP+cuKbM=
X-Received: by 2002:a05:622a:1350:b0:509:aa1:71eb with SMTP id d75a77b69052e-50925ff7427mr20643721cf.13.1773105846247;
        Mon, 09 Mar 2026 18:24:06 -0700 (PDT)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50923ed69bbsm15741051cf.28.2026.03.09.18.24.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 18:24:05 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Srinivas Kandagatla <srini@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v2 0/5] SDM670 LPASS LPI pin controller support
Date: Mon,  9 Mar 2026 21:24:41 -0400
Message-ID: <20260310012446.32226-1-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: B013C2437E3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273179-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

This adds support for the LPASS LPI pin controller on SDM670, which
controls some audio pins (e.g. TDM or PDM busses). The ADSP patches are
not sent yet.

This series depends on LMh because the LPI devicetree node is next to
the LMh devicetree node (NOPUSH: link to LMh).

Changes since v1 (https://lore.kernel.org/r/20260210021109.11906-1-mailingradian@gmail.com):
- add LPASS in dt-bindings patch subject (2/5)
- change pin names (2/5, 3/5, 4/5)
- add reviewed-by from Krzysztof (2/5)
- specify gpio-reserved-ranges (1/5, 5/5)

Richard Acayan (5):
  dt-bindings: qcom: lpass-lpi-common: add reserved GPIOs property
  dt-bindings: pinctrl: qcom: Add SDM670 LPASS LPI pinctrl
  pinctrl: qcom: add sdm670 lpi tlmm
  arm64: dts: qcom: sdm670: add lpi pinctrl
  arm64: dts: qcom: sdm670-google: add reserved lpi gpios

 .../pinctrl/qcom,lpass-lpi-common.yaml        |   6 +
 .../qcom,sdm670-lpass-lpi-pinctrl.yaml        |  81 +++++++++
 .../boot/dts/qcom/sdm670-google-common.dtsi   |   4 +
 arch/arm64/boot/dts/qcom/sdm670.dtsi          |  73 ++++++++
 drivers/pinctrl/qcom/Kconfig                  |  10 ++
 drivers/pinctrl/qcom/Makefile                 |   1 +
 .../pinctrl/qcom/pinctrl-sdm670-lpass-lpi.c   | 166 ++++++++++++++++++
 7 files changed, 341 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,sdm670-lpass-lpi-pinctrl.yaml
 create mode 100644 drivers/pinctrl/qcom/pinctrl-sdm670-lpass-lpi.c

-- 
2.53.0


