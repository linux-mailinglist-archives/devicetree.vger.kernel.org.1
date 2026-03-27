Return-Path: <devicetree+bounces-281759-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IM2UCqLCxmm8OQUAu9opvQ
	(envelope-from <devicetree+bounces-281759-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 18:47:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 796C7348936
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 18:47:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B6E0B303F070
	for <lists+devicetree@lfdr.de>; Fri, 27 Mar 2026 17:42:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BF0E3F99E1;
	Fri, 27 Mar 2026 17:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="L0ZhtfXE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A67361659
	for <devicetree@vger.kernel.org>; Fri, 27 Mar 2026 17:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774633372; cv=none; b=kn7mfmrYhR2eBlgjOIahPhamQOUbL9XEWvXlN1NW+4WAylgSaB121KwNwwudaZmGAQnG3e1Wm3W08aIDysEeg3RajQyy5A/e4a7D+NDPHG8w2UL9T+jN4Sx6SO4ssWEjzezA/dERWKSS7hDOFu7w/jfoMWE8hV2B0Mn7O4VpZkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774633372; c=relaxed/simple;
	bh=Xu9ww0uZOflx3FeFucbHDo2b9kq7shVVtkxvcwslSX4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CQt4Mlj3NIhClekLPBei1afYOzpQJrBuE+KBibDfC/v5qQWOlOu21PH26xTegsO8akzPoXw1xJ1dliYG6Oatxg/yAWihL0aAMlsT1DDTsBJa4p5Y4gRVQ+UEbP+5n/0axFesCcohi32xVWFTXYc+SOzWEz/0/18oBvCSiwEg3gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=L0ZhtfXE; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-439b97a8a8cso2436349f8f.1
        for <devicetree@vger.kernel.org>; Fri, 27 Mar 2026 10:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774633369; x=1775238169; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RbD/1VQctrGkQcC2fyGA2UEf1NCtGg7ps82iw1U8Cl0=;
        b=L0ZhtfXEmG23WEfCn/pCWcE2AnWoPVORUZCB9WSCCStGcRxVXFcMRnrBMfFPP+vgR8
         QzEdhDdXUACKNtkqfdrqwBtDCuVjjQVlNoLSOkyDa5/L2O+lYciYxVtiFnb9CCnKP0mj
         6e8wS75UteyRjswlPbCSid9VxMgATvRNq+dGpphhjPOcIG1u6URZ9sdo5rN145lpTwMf
         zJ67bcQ22PJOcQK+nlYckT19xlxkK9Czf+gSJtC0LHLQ6f6McmMOP+l0scglg3pX+yX/
         ZEGtSnErsrSf1WR2vijDoh8KpYfKVCGPEawOHef2i5o5iZiR1bwIcXcjgt4wqPNfm5Y9
         Qizg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774633369; x=1775238169;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RbD/1VQctrGkQcC2fyGA2UEf1NCtGg7ps82iw1U8Cl0=;
        b=fPVqgzDF3wALkpWmeryGjX6VC+OniDVyqixvopW8JKMqP/ZRsadER5YO4eyWSkjUhK
         Mrz509ummfrKvMitF6EeiX++tpHGgP4r0hWjKFy6p6m4wnIezGQO8tyH+1YmzF/g3hgU
         ib+KKBI74PdcZ7rBuTgxjggWLOtrFM7vWCBCzyDn1aOsubbryJKdql+C0UyRPkyLcmCm
         z5DPYTEY3OFfmWDAGCtcCoVAskZPNtcpRo5OF53J5EILLJnTDWawUjIY7p1mINPEvVVz
         YRm0wdCDDRZwVM3f/OX5Vynk74W8pGTNediuCoWIkyor5wcx3MK/MqRMUkClEf3GrCp/
         avng==
X-Forwarded-Encrypted: i=1; AJvYcCUpjTRwkFFpq+hNH7DAhsvkTbuiKche0qpLz6vc2iwq6am23yWD/Z6LBXGUOAVgZwV5d/XDwuiLmPyC@vger.kernel.org
X-Gm-Message-State: AOJu0YxOXNTC9K/mD9j7UWYPp8JRzW64hmz3Tp0fN0QtyCRYBy40xa2U
	+5Rlkt58aKors+UoXtOF5h9r6C4niy3ylS2YXzq5HfKMzHS4ZElS/PZa
X-Gm-Gg: ATEYQzyfKxoDBBnhbM8sYJ+PE81qxYjkdjc06x+i0bfsAFkvSbikL7CK6DGT+6fpY8V
	OD64g868l02VyeUFPsM3kgj/fLWtqV24tK50TrwkG2NdrCuf9FfE1OAUJuMENIlLsp1MxxVuCRE
	YG5igmYlRNxL8ijLxr6lrIBljxhvS2CklBDy7/f6zMDirWbbodXzAoLKJmBNVKrUxrI2ytMlgJI
	/tvt3y2Xab0Pjn8JiS4DpqeAFyB6ADt9P3gdJaIbqh44nVDAfeSEOZDeubr8RjgfwTS2PVWqp7o
	w5qNA+Li7BkS8Yd/uOgbzb1/lm3ajh3/q4YZV7oMUiJLCUfEp/Z7BEw+GcBajsV8YT6ey48JBi4
	lF9viAzQy3f1ce/toCIdApNbDdDqjQ7fu2aXqhbSHREY1xEDpKFwkD8W5vIADvEG4MdOz/41Z/5
	1P+FuHlRnpNT2D4aehf73MvnbBjILSNzCNpLPmyh6ypjI7JX1QAxJPT6NVxFeZSjNytSq1IgkWZ
	vpOypgGeZmRnfOQQYPAnIAKS6GB44aHtCGFHCiJSSHhlZo=
X-Received: by 2002:a05:6000:2307:b0:43b:3d02:7806 with SMTP id ffacd0b85a97d-43b9ea4a457mr5719949f8f.28.1774633368467;
        Fri, 27 Mar 2026 10:42:48 -0700 (PDT)
Received: from iku.example.org ([2a06:5906:61b:2d00:cad3:5596:28d0:27e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b9192e528sm15965933f8f.1.2026.03.27.10.42.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2026 10:42:48 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2 0/3] Add xSPI support for RZ/T2H and RZ/N2H SoCs
Date: Fri, 27 Mar 2026 17:42:42 +0000
Message-ID: <20260327174245.3947213-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-281759-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,glider.be,gmail.com,bp.renesas.com,sang-engineering.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,renesas.com,bp.renesas.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 796C7348936
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi All,

Add support for the xSPI (Extended SPI) Interface on Renesas RZ/T2H and
RZ/N2H SoCs. The xSPI IP on these SoCs is closely related to that found
on the RZ/G3E SoC with some register bit differences in the configuration
registers.

v1->v2:
- Add RB tag from Rob for the dt-bindings patch.
- Add RB tag from Wolfram for the rpc-if duplicate device name patch.
- Added xspi_info_r9a09g077 for RZ/T2H with type XSPI_RZ_T2H instead
  of reusing xspi_info_r9a09g047 with type XSPI_RZ_G3E, to allow for
  better differentiation in the future if needed.

v1: https://lore.kernel.org/all/20260310212927.3372410-1-prabhakar.mahadev-lad.rj@bp.renesas.com/

Note, patches apply on to of next-20260326

Cheers,
Prabhakar

Lad Prabhakar (3):
  dt-bindings: memory: renesas,rzg3e-xspi: Add RZ/T2H and RZ/N2H support
  memory: renesas-rpc-if: Fix duplicate device name on multi-instance
    platforms
  memory: renesas-rpc-if: Add support for RZ/T2H SoC

 .../renesas,rzg3e-xspi.yaml                   | 60 +++++++++++++++----
 drivers/memory/renesas-rpc-if.c               | 13 +++-
 include/memory/renesas-rpc-if.h               |  1 +
 3 files changed, 61 insertions(+), 13 deletions(-)

-- 
2.53.0


