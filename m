Return-Path: <devicetree+bounces-245321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C91CAF186
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 08:10:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 70CD9301AA75
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 07:10:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07B75279DC8;
	Tue,  9 Dec 2025 07:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nFWS9MoU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662A3264FBD
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 07:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765264206; cv=none; b=uHwwGlfnGnlgGD9+4oJG2X89QLwuin7xlAdeOzvhY0hXxQi3Treby19lbrC+KyE6QkSR6sUWNTIF992yBGEwCLDjWkhcxWBU+RKV0PxDDp7knpO4xLQ5rwVgXEUAQIZChWieFHdQvmd33dSmmDtOzZz0cMiMgS5jGI5G5Rm0fFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765264206; c=relaxed/simple;
	bh=GWUPZWPx87d+R5G1pL0rdruViGt7Dva8i9gC5jM5GW0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TFsM1DTnQF8ogGdU3knPZEvXSLLJlpcWfMZHpJRwsJ4a8HIzgQte9GwQgT6QXCg1jWKOky+bTW18dp7v3DhAuVM5Dh2g9Id2W5eEQ7ILJzSdLPfcjoME2is3WecFL46xhFDbbJb3KGiCddf9syX1lml8ZiLDu7CJJmQg13tebmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nFWS9MoU; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-297dc3e299bso44901725ad.1
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 23:10:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765264205; x=1765869005; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xg55Tln+6DnfF2kSPt4sxJR4WZV7mWdktIHdBzmSnGA=;
        b=nFWS9MoU9pXA1gTpWehV9xHBECs5mi0WXUevYAb72p4x08+jCsKm4BKTR1EDu1uNYW
         kbcHwqwtUJuOG15IVFlkuVClGCTtdcYifMk9/ya77a0DDxs2KwNgemGjweRd5afWkcqi
         xXstyYMoPJ7/QtxhytwHXPranF2bzyYhO02hS2b8rJbZm6ztV/MosXo5TSOiKxDxwsap
         oIQ+i91T3T5WYx9HIs9fpnZ0LaCG6IMzWtF9wjVy4ERRY59u3V69gTSdmbQ08wF/Apez
         bE9S35xp4lz4rotyGTS/NoYorhgNl7Lv2kIGaZAlPnT8EghSFULTeMt0yT+UCryUUAbV
         K/fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765264205; x=1765869005;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xg55Tln+6DnfF2kSPt4sxJR4WZV7mWdktIHdBzmSnGA=;
        b=Ep+hMcYhXsMLhdVycY2RFv3GgZ7G7NYd0X9GK9o+VqZxB7DVKu4SwYv+3sLqHqX+yt
         RhIJAl5jde5tqm9UxfAUHjM9uyOxRgFf1SW0pioQCZ43kcfct4LfbPgypDqr4R/Cy+21
         n9zwL8EnzA3EAjS5OmeV8ptyC3kovC8EQJYdq2IWh3vuUxNWMTahHfWxIa+oJACjPV/H
         9BIjHCx3Rai9RXQ7kULwsVQxANnPzeMX/GJjJljf2WKwrkIfwvnWp0ffvhJIpEMZiPW7
         sjNe36Ji578dtmcM8VFJAfrhpJgBI4Jj7zyxdzjGNQGXsz0Yrvj/1D4x6ScFL6wD8oTI
         UJYg==
X-Forwarded-Encrypted: i=1; AJvYcCXoOpRtOgoz8WBI9Pp6b5VH6fzu4CCmSkkO5JPSxlxexvj9/bpZjoJkZqUQ0XT8anIDVZS4JwN6uIxD@vger.kernel.org
X-Gm-Message-State: AOJu0YykIfIZpqfTWHFdcFg4a8/gvfPdyFsmc8rW1jll0wrz2gvtLif6
	CBN5Og+wQrfkUbQz/x4dVyBj/gUKL7yKZ8Ghe7ybyW7l4kdb4Oz7ypzb
X-Gm-Gg: ASbGncubmQR1PnxH2NrJEcQT+ls911VRhHrE9Nw//17XZKq33nv8otkhTtxyyR8hzQY
	Wcii4Numh3VC+i4uti7Cli64uDcloxEPwbyIZidrvFHJgG53YQvec0qMMQvW0nd0itXGTMIhNKg
	8hD9bFGEZQ7sLfxkAtU852mlMz8r4Q9AULVbrVA10kJOvm97Aj+v+qoDbXGY/czV1HfQRL51iX5
	LP1xhk+ExVpMhm9jzQBRkGVE0trqcLYwjHlUjZopA6owVlkn1Yf/ljBFWn55MAZBzdfI7sDTpNY
	SiFhMFDvP3dnD9NZSd2vcCtmj301wIBEPuMu7m50/d7F9yf5mP3XtbXdQqV8g41/0T3spBn5JWJ
	u9h70OAHaS4qEil6DXkx7M0S7YLGtq8/eXbnFfkvFIzKzgqQIqERX7C0Od+IehXTcAKxL7MSVmr
	UZ9UDOb9EBRwsSBDNtu66+JRBot6Z57r4hUaAkjJI+3bO1S09DIZakxaUCxKs0qMf4dw==
X-Google-Smtp-Source: AGHT+IH4xWkk+8tkFcAvGOYvd9507+UkaXMACCKUvjqSLoxEHfx36eSz/8egBxn9noqBt1eeILK0/Q==
X-Received: by 2002:a05:701a:c952:b0:119:e56b:98b1 with SMTP id a92af1059eb24-11e032aa4a3mr5974342c88.24.1765264204406;
        Mon, 08 Dec 2025 23:10:04 -0800 (PST)
Received: from [192.168.68.65] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11df7552211sm69916005c88.1.2025.12.08.23.10.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Dec 2025 23:10:04 -0800 (PST)
Message-ID: <1e74b956-a45a-4d3e-b7fa-e4d5dc0390db@gmail.com>
Date: Mon, 8 Dec 2025 23:10:03 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: qcom: msm8960: expressatt: Add
 coreriver,tc360-touchkey
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, beomho.seo@samsung.com, jcsing.lee@samsung.com
References: <20251205-expressatt-touchkey-v1-1-1444b927c9f3@gmail.com>
 <532531d2-8f26-4ffa-9355-7821a4d64200@oss.qualcomm.com>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <532531d2-8f26-4ffa-9355-7821a4d64200@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

>> Add the tc360 touchkey. It's unknown if this is the actual model of the
>> touchkey, as downstream doesn't mention a variant, but this works.
>>
>> Link:
>> https://github.com/LineageOS/android_kernel_samsung_d2/blob/stable/cm-12.0-YNG4N/drivers/input/keyboard/cypress_touchkey_236/Makefile#L5
> This driver mentions a register called CYPRESS_MODULE_VER - maybe
> it could help confirm the model?
>
> Konrad


Here are the changes that Claude made to the tm2-touchkey driver, which 
seems to do what you asked and matches downstream (I have never written 
a driver before, so please free to provide corrections if necessary):


diff --git a/drivers/input/keyboard/tm2-touchkey.c 
b/drivers/input/keyboard/tm2-touchkey.c
index 55d699d9037d..d1f435dc6b05 100644
--- a/drivers/input/keyboard/tm2-touchkey.c
+++ b/drivers/input/keyboard/tm2-touchkey.c
@@ -33,6 +33,9 @@
  #define TM2_TOUCHKEY_LED_VOLTAGE_MIN    2500000
  #define TM2_TOUCHKEY_LED_VOLTAGE_MAX    3300000

+#define CYPRESS_FW_VER            0x01
+#define CYPRESS_MODULE_VER        0x02
+
  struct touchkey_variant {
      u8 keycode_reg;
      u8 base_reg;
@@ -180,6 +183,53 @@ static irqreturn_t tm2_touchkey_irq_handler(int 
irq, void *devid)
      return IRQ_HANDLED;
  }

+static ssize_t module_version_show(struct device *dev,
+                    struct device_attribute *attr, char *buf)
+{
+    struct i2c_client *client = to_i2c_client(dev);
+    struct tm2_touchkey_data *touchkey = i2c_get_clientdata(client);
+    int module_ver;
+
+    if (touchkey->variant->no_reg) {
+        /* Aries variant doesn't support register reads */
+        return sysfs_emit(buf, "unknown\n");
+    }
+
+    module_ver = i2c_smbus_read_byte_data(touchkey->client, 
CYPRESS_MODULE_VER);
+    if (module_ver < 0)
+        return module_ver;
+
+    return sysfs_emit(buf, "0x%02x\n", module_ver);
+}
+static DEVICE_ATTR_RO(module_version);
+
+static ssize_t fw_version_show(struct device *dev,
+                   struct device_attribute *attr, char *buf)
+{
+    struct i2c_client *client = to_i2c_client(dev);
+    struct tm2_touchkey_data *touchkey = i2c_get_clientdata(client);
+    int fw_ver;
+
+    if (touchkey->variant->no_reg) {
+        /* Aries variant doesn't support register reads */
+        return sysfs_emit(buf, "unknown\n");
+    }
+
+    fw_ver = i2c_smbus_read_byte_data(touchkey->client, CYPRESS_FW_VER);
+    if (fw_ver < 0)
+        return fw_ver;
+
+    return sysfs_emit(buf, "0x%02x\n", fw_ver);
+}
+static DEVICE_ATTR_RO(fw_version);
+
+static struct attribute *tm2_touchkey_attrs[] = {
+    &dev_attr_module_version.attr,
+    &dev_attr_fw_version.attr,
+    NULL
+};
+ATTRIBUTE_GROUPS(tm2_touchkey);
+
  static int tm2_touchkey_probe(struct i2c_client *client)
  {
      struct device_node *np = client->dev.of_node;
@@ -354,6 +404,7 @@ static struct i2c_driver tm2_touchkey_driver = {
          .name = TM2_TOUCHKEY_DEV_NAME,
          .pm = pm_sleep_ptr(&tm2_touchkey_pm_ops),
          .of_match_table = tm2_touchkey_of_match,
+        .dev_groups = tm2_touchkey_groups,
      },
      .probe = tm2_touchkey_probe,
      .id_table = tm2_touchkey_id_table,

When run on mainline, this is what was outputted:

samsung-expressatt:~$ cat /sys/bus/i2c/devices/0-0020/module_version
0x06
samsung-expressatt:~$ cat /sys/bus/i2c/devices/0-0020/fw_version
0x09


fw_version matches downstream ClockworkMod Recovery dmesg:

~ # dmesg | grep "FW Ver"
<3>[    2.201312] cypress_touchkey 16-0020: Touchkey FW Version: 0x09
<3>[    2.206317] cypress_touchkey 16-0020: Touchkey FW Version: 0x09, 
system_rev: 8


Unfortunately, I'm not to sure what the other variant versions are, so I 
will CC the driver's maintainers:

MODULE_AUTHOR("Beomho Seo <beomho.seo@samsung.com>");
MODULE_AUTHOR("Jaechul Lee <jcsing.lee@samsung.com>");


It also seems like I forgot to mention that this patch was assisted with 
Claude and cleaned up by me. Will update the patch's description if I 
need to send a v2.


