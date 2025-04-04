Return-Path: <devicetree+bounces-163253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1DEA7C12D
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 18:01:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 362D57A8085
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 16:00:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3013D205E28;
	Fri,  4 Apr 2025 16:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=hoffmanne.cfd header.i=@hoffmanne.cfd header.b="VIe6UJuB"
X-Original-To: devicetree@vger.kernel.org
Received: from hoffmanne.cfd (unknown [147.189.135.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEC21205E15
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 16:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=147.189.135.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743782433; cv=none; b=krzyInzFwD9cDOQ1kGVOTNanVlru6TEICjR6nwLIriuEwtws+LD0Ivq3BDGsJyCJyez8o6crK8CTrZOMnUESrrbeuBZ3ZshwUBv34DejAPnfl8ZlkrlwNjlXwBnjHRG+ob28y7UEtONVvg+e312IQYNLeoxLLvfpVLBsZ+7y6c4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743782433; c=relaxed/simple;
	bh=IYxbeICQK8e2rRZhAXLSgrOhCXi0BW/Z9s7H62TtSp8=;
	h=To:Subject:Date:From:Message-ID:MIME-Version:Content-Type; b=jDtgDVy1O+RGz60nabEk4DTTdcEMigsdZuLA8jq01y1n1HKTV8mNHS1sD/GneLiStFWqlyO8nXC82GGXZpejxM1lRZyoT+4Oflprj6EpbQgN0X9GVuQ3/mp3RxxaMjSVWtQ/m5r2N8ASVIAyYaXoyMep16p2VMk+3hSsH5uplGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hoffmanne.cfd; spf=pass smtp.mailfrom=hoffmanne.cfd; dkim=pass (1024-bit key) header.d=hoffmanne.cfd header.i=@hoffmanne.cfd header.b=VIe6UJuB; arc=none smtp.client-ip=147.189.135.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hoffmanne.cfd
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hoffmanne.cfd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=hoffmanne.cfd; s=mail; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-ID:Reply-To:From:Date:Subject:To:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=L0iZFvOKRdneMjTr1bK7C14Y6R2q3ZPrgaxVOTVD8QI=; b=VIe6UJuBya7EVUjdb4TiBWgY2t
	XGdFLpeMzSquqcTRszd9Q0VymqQ25izlMtjEFhKMajUiyvzJza7nEzAifRXbrVRJcyXsDIZAT4t0S
	y9lASqoCY+63Uv1xx149U/uopWRzxXAnVOPlHGprn9HyK7KDajDN+xwiQuc9bRknvIu0=;
Received: from admin by hoffmanne.cfd with local (Exim 4.90_1)
	(envelope-from <support@hoffmanne.cfd>)
	id 1u0jT4-000OR4-NN
	for devicetree@vger.kernel.org; Fri, 04 Apr 2025 16:00:30 +0000
To: devicetree@vger.kernel.org
Subject: Re WTS
Date: Fri, 4 Apr 2025 16:00:30 +0000
From: Exceptional One PC <support@hoffmanne.cfd>
Reply-To: sales@exceptionalonepc.com
Message-ID: <f7d0299b3864eaf3d8fd2b84648d587d@hoffmanne.cfd>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello ,
These are available for sale. If you’re interested in purchasing these, please email me


brand new and original
Brand New ST8000NM017B  $70 EA
Brand New ST20000NM007D   $100 EACH
Brand New ST4000NM000A   $30 EA
Brand New WD80EFPX   $60 EA
 Brand New WD101PURZ    $70 EA

 8TB 7.2K RPM SATA 6Gbps 512   2500pcs/$70 each

 

SK Hynix 48GB 2RX8 PC5 56008 REO_1010-XT
PH HMCGY8MG8RB227N AA
QTY 239 $50 EACH



Brand New CISCO C9300-48UXM-E
Available 5
$21800 EACH

 

Intel Xeon Gold 5418Y Processors
QTY28 $780 each


Brand New C9200L-48T-4X-E  
$1000 EAC
QTY4

 


 Brand New N9K-C93108TC-FX-24 Nexus
9300-FX w/ 24p 100M/1/10GT & 6p 40/100G
Available 4
$3000 each

 

Brand New NVIDIA GeForce RTX 4090 Founders
Edition 24GB - QTY: 56 - $700 each

 Refurbished Grade A
Dell Latitude 5430 Intel i7 1255U 1.70GHz 
16GB RAM 256GB SSD 14" Win 11 Pro
QTY63 $139 EA


Refurbished Grade A
HP EliteBook 840 G7 i7-10610U 16GB RAM 512GB
SSD Windows 11 Pro TOUCH Screen
QTY 237 USD 80 each


