Return-Path: <devicetree+bounces-144204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF13A2D5AB
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 11:53:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 64B11188B5E8
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 10:53:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17AE51B87FD;
	Sat,  8 Feb 2025 10:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="AKBOQDBI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 701451B4227
	for <devicetree@vger.kernel.org>; Sat,  8 Feb 2025 10:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739012020; cv=none; b=iXAQSQVwAH8ef+1Is+lCrm6+xZF2/erEQ1hhAUASKjmujSazSJMLJLWhNsv1k+o4aeVYCa8bbRtBsNGw36Ze5JyGnFJ9e95vBuYOAr748fY/nlOtKsw93J1BduucbnpQ72KMF88Fv+bqjCJsux4Vh3kNbHzFjFIy0hLId7syCqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739012020; c=relaxed/simple;
	bh=hnqtuDOvE9KKTntRQWNuuRASTIzRapspAR7WuG2vANQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=md+mMC0x4Ma8cgj/h96kPyemIzBXDYJzeu7qqMSlsQ+EHMTiI5njl7ReEfQ5BmfLj+nrgnmqexG9yBP+LKUtl3XIw1QiRjqtvYIJek8AQfV0g2VXaDK6wZ8geqlJKez90V4oYreeK8f6ZAWXMYN1JxTMG8FmBtjibLqYKEM+eVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=AKBOQDBI; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2fa4493a695so653217a91.0
        for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 02:53:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1739012018; x=1739616818; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rbs6wjnY4vaySC1A59WocF0CXdHs9avCvrqKoElPFA8=;
        b=AKBOQDBIiq82PtZnEkwP/R4LydtCmedKhjDRTUGx0X3sK8vdRdgNc01H7pq3Ba9bI2
         aHbPAe9Yfj9IYhhk0AOt53ZmkTLf3lXvHHVBAfTvcGvRoeUjwpaOG1S0P9slNFNwEFAq
         UFaX+4pk2sd0VKGGVbqDSqVOER8Ye+teuzthSQ8uBOU/nSItlUzRy78YM36W9JpQ3niQ
         1R/Hy8ADUpRPvO5PYtgoKSC+7zOjKozjn1HFxHvm4nvwkbWmFLLuk+pbJvfW91SkWTAG
         xBJhyo+ptKjFy28NkudKSqP2cLG/mjlB9iPuDRWS4nnie/ImL+U9mvcZt2yH3HpEkA99
         Fk4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739012018; x=1739616818;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rbs6wjnY4vaySC1A59WocF0CXdHs9avCvrqKoElPFA8=;
        b=cxkZtT1PS1KvyNECmEDSFJAQybUU3J2mJGbFift9FSZHo26JqryFs7+TtJ4NFs8/D5
         lrtPBfmqRbzRjkGY5XFO9zX2Gblhujpcw0BoKN8SzblY7r1uv8P8nvNYujx984N909NL
         dZ//OmIfFJjJrdvPdOqBE3ZnZVwHsLP8Y90uySrq7+wZ9V6UrlquEtRcbP19065QEqDL
         FyxWetoIz2ehe/hSvmETC3Kg6LjB2hcMCpr8H23uiFTTBbP8mR0HbTSPT2PEzMmAGBEY
         2F2OjKYL4OyH/cqCgZ+5R5Ky0q8VQmVy5Netax/rxMvTe2kQWqLwKuOQk2A7WIUDs8NP
         Ep7A==
X-Forwarded-Encrypted: i=1; AJvYcCW/mwZ/kYiNPKKIPUFfVE0mwDyOm30ZkE2kZaCfsV+nxPAyORFsExvzcAAlBwddbh+OkywWskX2c/N5@vger.kernel.org
X-Gm-Message-State: AOJu0YxVa5I4WXAl8jbj1YbkhAgHOUO6JAkoPngoxmS7rHBwsFgcX1dB
	adIQ0dekGAD05K73BR5xHl0TCZkwM/8rcfuGeJBcCcjLLEfAlRx7NH4zXpeNIeM=
X-Gm-Gg: ASbGncsMaT2nHd/Zl+XEp3gL4FjAwKHK0LNtwgM85JdCwvwXc7VLIOOu7aZ8OlndpF/
	IZGbw75GEm4N2D10XNHUCxhAS/Enzl6P/IBQ8g8V9wGYTsAr9QVcsf8rswqkMttkjxaBd00c4VJ
	FLYHCFe+48Qha7TcnGie4ejMfM24eqqfRUCIRxoNaZL7hgox4GOyMQ4qhmr3R1+29GNrL+sgrIi
	0NO6zxPGgZS+RCgz2TLXEnKlw0KR4B7NvHXU6VM71ngmBTjfH47ivFzvxTfN+0PLSS2V8Evadj6
	25nLhmKHRHwZIhvodMCD9YUrAB20IDfsvJUaozRtOLORm7dHfiOoNf8qTjmeGGk=
X-Google-Smtp-Source: AGHT+IEV5Xl0wWYrSrkRkZ1oHtQxnN+LgtfamxZdI4uYbBB3qhpK+ue4hvRde3hbMze7Nvuo6PH1TQ==
X-Received: by 2002:a17:90b:4aca:b0:2ee:f80c:6889 with SMTP id 98e67ed59e1d1-2fa243ef19cmr11273338a91.33.1739012017749;
        Sat, 08 Feb 2025 02:53:37 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fa36f185c5sm2142003a91.16.2025.02.08.02.53.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2025 02:53:37 -0800 (PST)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	thierry.reding@gmail.com,
	sam@ravnborg.org,
	dianders@chromium.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v5 1/3] dt-bindings: display: panel: Add a new compatible for the panels KD110N11-51IE and 2082109QFH040022-50E
Date: Sat,  8 Feb 2025 18:53:24 +0800
Message-Id: <20250208105326.3850358-2-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250208105326.3850358-1-yelangyan@huaqin.corp-partner.google.com>
References: <20250208105326.3850358-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a new compatible for the panels KINGDISPLAY KD110N11-51IE and
STARRY 2082109QFH040022-50E. Both panels use the HX83102 IC, so
add the compatible to the hx83102 bindings file.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 .../devicetree/bindings/display/panel/himax,hx83102.yaml      | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
index d876269e1fac..e4c1aa5deab9 100644
--- a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
@@ -22,6 +22,10 @@ properties:
           - csot,pna957qt1-1
           # IVO t109nw41 11.0" WUXGA TFT LCD panel
           - ivo,t109nw41
+          # KINGDISPLAY KD110N11-51IE 10.95" WUXGA TFT LCD panel
+          - kingdisplay,kd110n11-51ie
+          # STARRY 2082109QFH040022-50E 10.95" WUXGA TFT LCD panel
+          - starry,2082109qfh040022-50e
           # STARRY himax83102-j02 10.51" WUXGA TFT LCD panel
           - starry,himax83102-j02
       - const: himax,hx83102
-- 
2.34.1


