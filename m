Return-Path: <devicetree+bounces-6279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 841507BA985
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 20:56:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 35F05281AF1
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 18:56:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C8F8405DE;
	Thu,  5 Oct 2023 18:55:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FJZ6/yTx"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D2D37CA9
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 18:55:56 +0000 (UTC)
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8629798;
	Thu,  5 Oct 2023 11:55:54 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5043a01ee20so1695157e87.0;
        Thu, 05 Oct 2023 11:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696532153; x=1697136953; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MWYpFdaVGut5Npp6T7pkp8bwOXgHapwNlMwFZnUGk7w=;
        b=FJZ6/yTxRuzOMR6Sweo4Pazyb130kOqWqIcCddCKv0ahnIeDA9jE4MJhrjfSBBVlgM
         FG/w/dvl8os8jAZkyOeX9rmyGkRz++bcprYu0ocUlKhB5lWTLEiXV+RDbbFc4B73OnaP
         DKAhebanyXaPO0iVFwZ8VG14aGhXmNJJvsWfM6oxzu9eIIczUjpNnEvKDB6CsfIe97eL
         0Bp6xzxSuRIUTlWpuUpOQ8DLDSsgcl7uSPEyKUvlflaSP5yMXpKkXrFXe+MlZgcctTW6
         2TR+DTk/7G2VyoL4aCIoj/8TkgwfxlLE6TaQZIBuO+ygyJku5exVEPvS1vH5pWixdgeJ
         hj0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696532153; x=1697136953;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MWYpFdaVGut5Npp6T7pkp8bwOXgHapwNlMwFZnUGk7w=;
        b=B6kk7UqamgBfsGboqSPchVzbH6RhQAKVeBFri6jd9DHXmlLrLh72ZotQ+a3/ijxa3r
         JDOSbeZ0OBzXP8t6WV+4IfjNG/oXLhqsBVB4t/K5esPWm0STOMJOWgRxgTg6m+APRraf
         bawxL33bFBtJcBIMiBmGrRHRBa9avmVzSODKPJZMBJ+STWpGygEvwKoi7Mo+c3oYSdBX
         iYWzHN6tKv9crLDd/9qOSyGbD23Bl1pz+t6ZdPhCQCPnkxDcenOmkcBKe66y8vBUpsNh
         OO1SL3i29IaoKpyRyBn5xWTNk1rfgTvBzuH0G9tuuFWTQqbj1sWVo74Zn3rSDT5v+yOq
         9UUg==
X-Gm-Message-State: AOJu0Ywlzl0Q3U5vsZYXJZ5NqXA2QnH245m1EKivEqsmJqG6LEYkoTLT
	EJPRhVoYRvmvEGy1RhWfgIA=
X-Google-Smtp-Source: AGHT+IFqJ0U55JaSS9dVubIT2L7uAnCK33QG8H5yiAfzQX6CIEcmXkxhfi0/H3PS/DK9qIQv6VV5iQ==
X-Received: by 2002:a05:6512:523:b0:500:9a45:638 with SMTP id o3-20020a056512052300b005009a450638mr5397514lfc.2.1696532152323;
        Thu, 05 Oct 2023 11:55:52 -0700 (PDT)
Received: from fr.lan ([46.31.31.132])
        by smtp.googlemail.com with ESMTPSA id q1-20020ac246e1000000b004fe48d0b639sm402341lfo.83.2023.10.05.11.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 11:55:51 -0700 (PDT)
From: Ivan Mikhaylov <fr0st61te@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Ivan Mikhaylov <fr0st61te@gmail.com>
Subject: [PATCH v4 0/2] Add maxim max34408/34409 ADC driver and yaml
Date: Thu,  5 Oct 2023 21:55:35 +0300
Message-ID: <20231005185537.32267-1-fr0st61te@gmail.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add Maxim max34408/34409 ADC driver and yaml for it. Until now it
supports only current monitioring function without overcurrent
threshold/delay, shutdown delay configuration, alert interrupt.

Changes from v1:
   - minor changes from Rob's comments for yaml
   - add ena, shtdn and make 4 inputs for R sense from Jonathan's comments for yaml
   - add _REG suffix and make prefix for bitmasks and statuses
   - add SCALE/OFFSET instead of AVG/PROCESSED from Jonathan and
     Lars-Peter comments
   - add chip data from Jonathan and Lars-Peter comments
   - minor changes from Lars-Peter and Jonathan comments for driver

Changes from v2:
   - add channels into hardware description into yaml
   - add rsense property per channel
   - rename pins for shtdn and ena pins
   - make one array for input_rsense values

Changes from v3:
   - change *_34408_OCT3 and 4 to *_34409_OCT3 and 4
   - change of_property_read_u32 to fwnode family calls
   - add i2c dev table
   - change of_match_device to i2c_of_match_device
   - change match->data to i2c_get_match_data 

Ivan Mikhaylov (2):
  dt-bindings: adc: provide max34408/9 device tree binding document
  iio: adc: Add driver support for MAX34408/9

 .../bindings/iio/adc/maxim,max34408.yaml      | 137 +++++++++
 drivers/iio/adc/Kconfig                       |  11 +
 drivers/iio/adc/Makefile                      |   1 +
 drivers/iio/adc/max34408.c                    | 278 ++++++++++++++++++
 4 files changed, 427 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/maxim,max34408.yaml
 create mode 100644 drivers/iio/adc/max34408.c

-- 
2.42.0


