Return-Path: <devicetree+bounces-110407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1A699A5BA
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 16:05:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7AB141C2160D
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 14:05:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE56DD517;
	Fri, 11 Oct 2024 14:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iNZagJ3l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADD020ADF4
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 14:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728655512; cv=none; b=vGpdj5yM1r/fNloABYjsjPLdDvzup8wjmLXymNqDln/jQL81+Zx+i86ufytnw5j3pAf6glqQyjP/OUeOaPNIWXDLa3letWHMca5ntyIW9ld7XpTa0/F63SMD0UtPgrpbzqaeFxzboWN0Q+ecRteoX77O1EPZyxsTHAAtzvTNP/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728655512; c=relaxed/simple;
	bh=HvOAiyeRtC4ZpbDXb3/otubkgRELFW1jo6lhr06hjJQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=d+L8EG3LO6VgMwB1t4QvA4FL18t4azjVOFKDnJSUj9qnv2icuBP4nsKH7Cx0+iNBcdpXtPZZnTtn2evUl9Cqj3jPr8ByzRFOz7wK3qU/k8+tyivTeDzWWTfjMMDouosX/M/+UrOH5ujByc8GY4m4GCAybX2h2K91NdtATvEGgZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iNZagJ3l; arc=none smtp.client-ip=209.85.160.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-460464090d5so15410841cf.2
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 07:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728655510; x=1729260310; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qAQFULo1R7HgPd8xCyid4QNqk+lABQxtSQfY/xFcRtc=;
        b=iNZagJ3ld/YxITMZ2fgudtSy2kyUhS313+bUu+5VrwRYbGV8hW2FOiNKylh0g8qmV1
         i6pZEdNtgvfMohEThOoB3ljePkpBNA7COPov40v5Np04IjeqMs19OnN3ea0qvp0d6YaD
         XVmH4i4dyym+GApJwLxfWg45NU3kzST2h4MwTUm96AoAQOVSoK39LzXps4LGICSI6AIp
         1I6BNvqYze5ZW/TmmUm5Wkd4qsAEPqGovrCrAI5KFa47o5KItRwx+QPLmLjl8p1il4jv
         y+kjW1xqS+7btrTi74yk/A7vQvJulaHTT7DB1cbTQSa/Q4j7iUG4R6they6uypYQKiXD
         BkVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728655510; x=1729260310;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qAQFULo1R7HgPd8xCyid4QNqk+lABQxtSQfY/xFcRtc=;
        b=NZu9DPltPQakoCXXxc6q1iDhoN/74TO6yhg4eKJsS6tt+ZyLZutzzoObybuwEBY7a6
         ajln0LZNDhV03OlFCfDpU7i5T2HA2wgpwX/Y5vsQRBq9uJH4vFe8+Dd4rHXWOBTVUZpc
         FvS4TKQNGx3n2imlUrsQGg96O6w9ECfMTCZPD5gxkfDcqBtHlFhA6QBWKKsB4Y/zhP4v
         W0jU73WB42HtWbZ2U1U4j+b83+2DaMjvNFHn8n/hFm9RzyAhnuQQJkHwLPgibDzwb5lx
         b/fuo7LaG46xBC8WwJkNzOTL82Y1g4YZW9pgq2OWXcb+Sfet8ejWm033+IE9aQGn5p4s
         bAYQ==
X-Gm-Message-State: AOJu0Yz8AufdVyRhJFa/3mDCGf1Z7q9K/K3FvsyS/MO3utXeqmjZNNGL
	rcCMSPgzSj6FNXnl2uIZt/6B+ieNRlqPHrpJKWC/Wc3GgVjJccJ9U+AFDg==
X-Google-Smtp-Source: AGHT+IFWHqTQnkdxu+aj3+XmHH98DGgPnge+WMo6DZUX9PxJnB+ldLN7ja1deLqfwPBga7chZWdT2g==
X-Received: by 2002:a05:6214:3202:b0:6cb:ecb3:4d37 with SMTP id 6a1803df08f44-6cbf005bfb1mr38855916d6.48.1728655509750;
        Fri, 11 Oct 2024 07:05:09 -0700 (PDT)
Received: from localhost ([2620:10d:c091:400::5:7799])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6cbe867a9c6sm15604046d6.144.2024.10.11.07.05.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 07:05:09 -0700 (PDT)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
To: devicetree@vger.kernel.org
Cc: tnovak@meta.com,
	Jes Sorensen <jes@trained-monkey.org>
Subject: [PATCH 1/1] Skip building dtc if a prebuilt binary is specified via DTC=
Date: Fri, 11 Oct 2024 10:05:07 -0400
Message-ID: <20241011140507.3703348-2-Jes.Sorensen@gmail.com>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20241011140507.3703348-1-Jes.Sorensen@gmail.com>
References: <20241011140507.3703348-1-Jes.Sorensen@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jes Sorensen <jes@trained-monkey.org>

For Android it is common to use a prebuilt dtc, speficied via DTC=. In
this case building dtc as part of the kernel is not necessary, and even
unwanted to avoid mix and match between two different versions of dtc.

Signed-off-by: Jes Sorensen <jes@trained-monkey.org>
---
 scripts/dtc/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/scripts/dtc/Makefile b/scripts/dtc/Makefile
index b47f4daa4515..3b683dc7e582 100644
--- a/scripts/dtc/Makefile
+++ b/scripts/dtc/Makefile
@@ -2,8 +2,11 @@
 # scripts/dtc makefile
 
 # *** Also keep .gitignore in sync when changing ***
+# If a prebuilt dtc binary is specificed, don't build dtc
+ifeq ($(DTC),)
 hostprogs-always-$(CONFIG_DTC)		+= dtc fdtoverlay
 hostprogs-always-$(CHECK_DTBS)		+= dtc
+endif
 
 dtc-objs	:= dtc.o flattree.o fstree.o data.o livetree.o treesource.o \
 		   srcpos.o checks.o util.o
-- 
2.46.1


