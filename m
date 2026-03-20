Return-Path: <devicetree+bounces-278395-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJM9HgeAvWk4+gIAu9opvQ
	(envelope-from <devicetree+bounces-278395-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 18:12:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 201512DE5DF
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 18:12:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6F96B30594FA
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 17:03:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 908AA3CF03C;
	Fri, 20 Mar 2026 17:03:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="WDGzkNJ8"
X-Original-To: devicetree@vger.kernel.org
Received: from out-188.mta0.migadu.com (out-188.mta0.migadu.com [91.218.175.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7733CE4B7
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 17:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774026197; cv=none; b=du4ABopiwGHh5FXgdOix6q87WGzfuq883Wo6JFDBSC53qzEH6zYsZQf4WFbnIizG3hjujZBBdWVxFf0GTKrio9gl9wK2UY3wPhq8faPzQewd4+4zU9IO6+ebgxKYExRO8yJu/C8Ood13xAsWcF+GX5VPPJug/agIwkJTe/3TVmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774026197; c=relaxed/simple;
	bh=R9agQqu5tkXPYNVu0v9e5fQs7jHig/EoRGj3+oCKDy4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oGvMFVrUQj/rTsvQXizB6Z6XcLw2QThyOy/P6dbGJjz7Ia6AsY135wsHGr57QohcOWh4429GMvhbVTbtIFAvhHaNeSLSl9ki/zCGciJQlcesIIaGm0C5SALIzewzQhPyDRlrND1JCdKVHjJ5dP/lQI4Zzh26EUyGrdj33va/7Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=WDGzkNJ8; arc=none smtp.client-ip=91.218.175.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
Message-ID: <55dab1d8-87af-4285-9ab1-924bf392c78d@postmarketos.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1774026192;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6pufWPdNgCwGbYkgjf8omMA/m8gPnG3IRMg4mH8sWk4=;
	b=WDGzkNJ8By5Y6tAKDPv3fbGbSbNJqnFLw1phIB0Azz1YGK7bjjneXFleqtBflMOI5pB2Fz
	UNjG3QBrjQIEoxtnua0WRb4O/RPGquLUYKYaJPKpxoga8rcmDjgVhszWag/m/VNCmM/Ftd
	wD6JuHFUMqHMhyV5+5M2J0oPJu37wNVITe0a4ApkjhC9hgsCS/nQAGyZjEmWZVgem38j7F
	bKW/pnNzXIWJkDhr8wKYmUdEBvuuIkdK0G1A1LRfHTKYmeBlwgck/a9r79Z+Ba19gX8sMT
	CS8U/8z1zoIO1X7SxiLZegtw2Eu+BFaIMlrJe21HKDJ8ZaEH/esh31iHR010Dw==
Date: Fri, 20 Mar 2026 18:03:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v7 2/7] Input: synaptics-rmi4 - handle duplicate/unknown
 PDT entries
Content-Language: en-US
To: David Heidelberg <david@ixit.cz>,
 Kaustabh Chakraborty <kauschluss@disroot.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Vincent Huang <vincent.huang@tw.synaptics.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20260320-synaptics-rmi4-v7-0-379360de18d0@ixit.cz>
 <20260320-synaptics-rmi4-v7-2-379360de18d0@ixit.cz>
 <fba73d66-4300-4c4d-9bf6-4b38a4e847d7@postmarketos.org>
 <3dca0fc0-fe1c-4f84-b336-856f55a6e3da@ixit.cz>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Casey Connolly <kcxt@postmarketos.org>
In-Reply-To: <3dca0fc0-fe1c-4f84-b336-856f55a6e3da@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[postmarketos.org,quarantine];
	R_DKIM_ALLOW(-0.20)[postmarketos.org:s=key1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278395-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[ixit.cz,disroot.org,gmail.com,kernel.org,zx2c4.com,ew.tq-group.com,tw.synaptics.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.981];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kcxt@postmarketos.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[postmarketos.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[postmarketos.org:dkim,postmarketos.org:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 201512DE5DF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 20/03/2026 17:54, David Heidelberg wrote:
> On 20/03/2026 17:49, Casey Connolly wrote:
>> Hi David,
>>
>> Nice timing with the series, I hit an OOB access (found it when I
>> enabled UBSAN) with this patch the other day.
>>
>> The pdt_scan_state->pdts array should actually be of size
>> (RMI_PDT_MAX+1).
>>
>> Additionally, I think rmi_pdt_entry_is_valid() is missing a bounds check.
>>
>> Kind regards,
> 
> 
> Thanks a lot for catching this and for the detailed notes — that’s very
> helpful.
> 
> Since you’re the original author of the commit, I’m completely fine with
> you taking over the b4 series if you’d prefer. Alternatively, if it’s
> easier, feel free to just send me a fixed patch and I can incorporate it.
> 

Uh sure, not sure this will apply cleanly I just edited inline it's a
3-line delta. Also figured we can drop pdt_count since it's unused.

---

diff --git a/drivers/input/rmi4/rmi_driver.c
b/drivers/input/rmi4/rmi_driver.c
index ccd9338a44dbe..c7d2f68e65487 100644
--- a/drivers/input/rmi4/rmi_driver.c
+++ b/drivers/input/rmi4/rmi_driver.c
@@ -494,12 +494,39 @@ static void rmi_driver_copy_pdt_to_fd(const struct
pdt_entry *pdt,
 	fd->function_version = pdt->function_version;
 }

+static bool rmi_pdt_entry_is_valid(struct rmi_device *rmi_dev,
+				   struct pdt_scan_state *state, u8 fn)
+{
+	if (fn > RMI_PDT_MAX)
+		return false;
+
+	switch (fn) {
+	case 0x01:
+	case 0x03:
+	case 0x11:
+	case 0x12:
+	case 0x30:
+	case 0x34:
+	case 0x3a:
+	case 0x54:
+	case 0x55:
+		if (state->pdts[fn] == true)
+			return false;
+		break;
+	default:
+		rmi_dbg(RMI_DEBUG_CORE, &rmi_dev->dev,
+			"PDT has unknown function number %#02x\n", fn);
+		return false;
+	}
+
+	state->pdts[fn] = true;
+	return true;
+}
+
 #define RMI_SCAN_CONTINUE	0
 #define RMI_SCAN_DONE		1

 static int rmi_scan_pdt_page(struct rmi_device *rmi_dev,
 			     int page,
-			     int *empty_pages,
+			     struct pdt_scan_state *state,
 			     void *ctx,
 			     int (*callback)(struct rmi_device *rmi_dev,
 					     void *ctx,
@@ -522,6 +549,9 @@ static int rmi_scan_pdt_page(struct rmi_device *rmi_dev,
 		if (RMI4_END_OF_PDT(pdt_entry.function_number))
 			break;

+		if (!rmi_pdt_entry_is_valid(rmi_dev, state, pdt_entry.function_number))
+			continue;
+
 		retval = callback(rmi_dev, ctx, &pdt_entry);
 		if (retval != RMI_SCAN_CONTINUE)
 			return retval;
@@ -532,11 +562,11 @@ static int rmi_scan_pdt_page(struct rmi_device
*rmi_dev,
 	 * or more is found, stop scanning.
 	 */
 	if (addr == pdt_start)
-		++*empty_pages;
+		++state->empty_pages;
 	else
-		*empty_pages = 0;
+		state->empty_pages = 0;

-	return (data->bootloader_mode || *empty_pages >= 2) ?
+	return (data->bootloader_mode || state->empty_pages >= 2) ?
 					RMI_SCAN_DONE : RMI_SCAN_CONTINUE;
 }

@@ -545,11 +575,11 @@ int rmi_scan_pdt(struct rmi_device *rmi_dev, void
*ctx,
 		 void *ctx, const struct pdt_entry *entry))
 {
 	int page;
-	int empty_pages = 0;
+	struct pdt_scan_state state = {0, {0}};
 	int retval = RMI_SCAN_DONE;

 	for (page = 0; page <= RMI4_MAX_PAGE; page++) {
-		retval = rmi_scan_pdt_page(rmi_dev, page, &empty_pages,
+		retval = rmi_scan_pdt_page(rmi_dev, page, &state,
 					   ctx, callback);
 		if (retval != RMI_SCAN_CONTINUE)
 			break;
diff --git a/drivers/input/rmi4/rmi_driver.h
b/drivers/input/rmi4/rmi_driver.h
index e84495caab151..a4ae2af93ce3a 100644
--- a/drivers/input/rmi4/rmi_driver.h
+++ b/drivers/input/rmi4/rmi_driver.h
@@ -46,6 +46,14 @@ struct pdt_entry {
 	u8 function_number;
 };

+#define RMI_PDT_MAX 0x55
+
+struct pdt_scan_state {
+	u8 empty_pages;
+	bool pdts[RMI_PDT_MAX + 1];
+};
+
 #define RMI_REG_DESC_PRESENSE_BITS	(32 * BITS_PER_BYTE)
 #define RMI_REG_DESC_SUBPACKET_BITS	(37 * BITS_PER_BYTE)


-- 
2.53.0




-- 
// Casey (she/her)


