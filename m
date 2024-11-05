Return-Path: <devicetree+bounces-119161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CE09BD3E6
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 18:59:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 90CFAB22969
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 17:59:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 356851E7C11;
	Tue,  5 Nov 2024 17:59:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="thW1ggpa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B15911E571A
	for <devicetree@vger.kernel.org>; Tue,  5 Nov 2024 17:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730829551; cv=none; b=SKz+/ZyvN/sjJEXjNNIlOSSZ+6J1Fk8/EHQsaD4fnrxUpdTCn7Fib3pSa5iWuvBtfDIKsHVYpRyZgkJYlak23e6W5xL2xBRo/3G5m6ecgnUyx7abCqHEiEZ4Ag770c7nIcQKfiY3recDVCC4qxzUhqdZsvgvqa3y2nd9TEh7AbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730829551; c=relaxed/simple;
	bh=ktW0GKrYRwS/MWSHyPsz9MtYv3cVuAnNYT/fHajylvw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=InMcBg5sWLt/H/teEMsQkGKeN511tJXeNio+877iserbxmhLgIPpwxhjN+lEbc5fOmS+92H0kRh0HMKQjZUdftBJDSijm1rmQiM7amZ+ylB0VlVUIAcqIn4hn2o3FWJ+MrdmxV+Qc5/zBSDjaOaonH6Nv1h6ir6it1kEe7pAYnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=thW1ggpa; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-37d6ff1cbe1so4189625f8f.3
        for <devicetree@vger.kernel.org>; Tue, 05 Nov 2024 09:59:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730829546; x=1731434346; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HQOF7ULLSSCvm8fW5y6GOnkdNjq0wbdWw4lgdHQeMiE=;
        b=thW1ggpa8q7pBFB4F0WZ8vRgkn4hIc3yNHmUfk6aPYvLzRJ4S+bBko1oc+gn6MQvLm
         vxkjh6E7s3tnJJ5oknxZPdjBrkCMI12d9eHbuNqQhWmk7qYkyiTrYmI2DgL60eOJ0iyU
         gfo5mUoNPWf6y5kcOPslOmRP6Ne+xNiybUNjnJH7g+7M7gfMmrxrE1Cg/FHTXcV4oi2x
         4zGe8/Jd5rfKKjuyhcltwyx3y1YAosDQByH6assb2PxF4QxBNExlrEDzRT44YvX0OpvE
         fmaWUOY3HCIWGuFkpYAe3crxBfFDJz7EVUVXoo8yxAMERtrdOS0XPiRCZhWAO9m9IZ5k
         klMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730829546; x=1731434346;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HQOF7ULLSSCvm8fW5y6GOnkdNjq0wbdWw4lgdHQeMiE=;
        b=UTGqQgQTf9i5Lvm3uoek9K/tDrZtH7PG2DSWSLsUHXJu0oxLhcIqo0OCjCAGR5vwFa
         BMzW1WZQMW9/GD9WMjf2PmGLg6clelVGQ+jQJPK4LQVujWT6CPmgncQb6QGQvu9Xxg+i
         sacRfls/1hD9nqJFoXYwVr4l2QpHJVPT9J5xF1dV/qjd3HZI5XeJQKzm8Q54YXx43A6u
         1DF2DDJXpxeS6OybXYnCW/ZKg040si3mhaRYsTpScdbiZkh3XoLgIO446FxGhezbL0Q4
         fkfuHWabL6MP6PJMEqBOSTsr0D7gCrZ+3lXIpCDkpy7gGt5UF7suPBRc0DK5K7+txIN1
         ml9Q==
X-Forwarded-Encrypted: i=1; AJvYcCWdfUAtFaKSzoxKaRn4gvDZ3TXg8MQK2wLKdxDdmBs0YNIXh6OOzzy/SeiAO5cj2BmKIXoKWGOuZCvm@vger.kernel.org
X-Gm-Message-State: AOJu0YxWoJy0zNi9K0HUwUt3YlRus0t3XIU1ELL5R0ujJz+hD+x7InRX
	sYqFMwgrR9hdrNBYHVmHYAQlyvU3QxOmPwUqSjnJdEhvGqmRbxAQUZbQUPlaD78=
X-Google-Smtp-Source: AGHT+IFiXg+Pk7NwIRN/jmZgmoFna52TL4VngHOo1/Xg+wnm0k2K8RU347YgH7g7hKinh//u0MjnxQ==
X-Received: by 2002:a05:6000:1842:b0:37c:cd38:c51e with SMTP id ffacd0b85a97d-381be7adf74mr14978203f8f.1.1730829545960;
        Tue, 05 Nov 2024 09:59:05 -0800 (PST)
Received: from toaster.baylibre.com ([2a01:e0a:3c5:5fb1:5b9b:df02:2761:7a57])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-381c113dd7fsm16959481f8f.70.2024.11.05.09.59.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2024 09:59:05 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Tue, 05 Nov 2024 18:58:38 +0100
Subject: [PATCH v4 1/7] hwmon: (pmbus) add documentation for existing flags
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241105-tps25990-v4-1-0e312ac70b62@baylibre.com>
References: <20241105-tps25990-v4-0-0e312ac70b62@baylibre.com>
In-Reply-To: <20241105-tps25990-v4-0-0e312ac70b62@baylibre.com>
To: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Jonathan Corbet <corbet@lwn.net>, 
 Patrick Rudolph <patrick.rudolph@9elements.com>, 
 Naresh Solanki <naresh.solanki@9elements.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jerome Brunet <jbrunet@baylibre.com>, 
 Delphine CC Chiu <Delphine_CC_Chiu@Wiwynn.com>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-doc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-i2c@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1629; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=ktW0GKrYRwS/MWSHyPsz9MtYv3cVuAnNYT/fHajylvw=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBnKlzhvQPxtedOYvOHyn1+qAaTyZ4JJnw30qwln
 EmtnD0is7CJAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCZypc4QAKCRDm/A8cN/La
 hfpJD/0cVfc7WiZKYsK62JOY8LNupfGVTbpzODKb8RJB3dN+fxSu0tW+glVc5ZdarEcN9f0BS49
 U7GG9gt1rMeoFIb0LIF79IJhyqxoMWrI+QLnzv1jdOxBvymUEo0Ws1ZbH5Nx0XwGjL+VWHNdhgp
 /xihJLmUkjlvF0GKw5txxoxIEqS9ZvlISyt765OEHkHo1bsmolevYUxadEeixFRWvPw5/XDTBOq
 f7Hz+B+RmWjySaFqfzcW9/e3vfOBm70VMjGIXvP8narC6s3iLHBFZdCGR0yDTvc2lgJeo7MuvzO
 8g/N8NRP+ChPbmCQocpJvgi/q36kJCeZFOBEWNzwSPm60KCO/XpAFHNJWTtsYWRgFFgOu0taJ5P
 GgeywGDVnqQH4lO5EEGdEeJ5lC+ch3J4OBRNzks5zkJtIpUsupcrHp1RvYoj3tn/K87AEaEBsTS
 SvXDJOY2NPwVtKrQMHto36BkOI5kRmA1iXTYhl7UtJGy/5DexI10W81OVqp8kcl9uHPiepLpSwD
 1I5iIP4cYL6G2MQJLXO8XvXxqwQYTsAK6k67F2xtheisQQtQ/rgTXsdFZf2hx437FmM9AE7RXJt
 Xj/7X6AZ8UEfF6CXXKFafLSlGK6blMq6nZT72oubMkEfc/ZkjvmS+gB9X3WrIobuKEtrpjltd0Y
 JVf8QuYTYDWop2g==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9

PMBUS_NO_WRITE_PROTECT and PMBUS_USE_COEFFICIENTS_CMD flags have been added
to pmbus, but the corresponding documentation was not updated.

Update the documentation before adding new flags

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 Documentation/hwmon/pmbus-core.rst | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/hwmon/pmbus-core.rst b/Documentation/hwmon/pmbus-core.rst
index 1eaf2b0158376812eaff1786d01b0f330c85eab8..686a00265bf71231c684afad6df41d6266303919 100644
--- a/Documentation/hwmon/pmbus-core.rst
+++ b/Documentation/hwmon/pmbus-core.rst
@@ -308,6 +308,10 @@ currently provides a flags field with four bits used::
 
 	#define PMBUS_READ_STATUS_AFTER_FAILED_CHECK	BIT(3)
 
+	#define PMBUS_NO_WRITE_PROTECT			BIT(4)
+
+	#define PMBUS_USE_COEFFICIENTS_CMD		BIT(5)
+
 	struct pmbus_platform_data {
 		u32 flags;              /* Device specific flags */
 
@@ -358,3 +362,14 @@ This can be done by reading a known register. By setting this flag the
 driver will try to read the STATUS register after each failed
 register check. This read may fail, but it will put the chip into a
 known state.
+
+PMBUS_NO_WRITE_PROTECT
+
+Some PMBus chips respond with invalid data when reading the WRITE_PROTECT
+register. For such chips, this flag should be set so that the PMBus core
+driver doesn't use the WRITE_PROTECT command to determine its behavior.
+
+PMBUS_USE_COEFFICIENTS_CMD
+
+When this flag is set the PMBus core driver will use the COEFFICIENTS
+register to initialize the coefficients for the direct mode format.

-- 
2.45.2


