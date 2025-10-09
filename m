Return-Path: <devicetree+bounces-224823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7F6BC82F8
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 11:07:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9073619E69DA
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 09:08:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC0A82D979F;
	Thu,  9 Oct 2025 09:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="RYYTk8nx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDA82D7DE8
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 09:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760000811; cv=none; b=R0lSWesDMSQr6YlCDzi20M3RiTCGenxAiof7gT+ieNLprohf+jJBWoAGHIMU1ChpXvvQtLrRVoUQa8ba6bZVPHp6nV5YkMKp6Cbfr/aed46Tuhm5B0F3JUgKfP/ok+jeHbMyjlBkDg6HKBimB7Uo9HKrVb6OPPk9ThUtfdG5Oes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760000811; c=relaxed/simple;
	bh=SqYp6oMGQfRwN2qH98jj6JyAPPXL3u1jMwQvHYWacq0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t1ws4mHypVvlQ01fZd0Cl0PQMdrBDOfeuq830NvUACmw61X8sJvM2/PUN+AfH8dzp7/sQT5obikqHi/EO5gSoNG0en/Vh1nY7j9Oaench/q854eFUjK7BYfo0Mhn78FQFSrELfUvDz6cHPdmuT175DpKC0FhOKYXEj3IxzSditQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=RYYTk8nx; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-6318855a83fso1471376a12.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 02:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1760000807; x=1760605607; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nNMFRDKf+PR9ZifP7PovpqPBrj6t9cvi/yjDK0cLJZg=;
        b=RYYTk8nxGInV6JK+Ti9BAS9o1eWxsoLGpJSrpBOpTCyN7VDU+HwJTNnznx3hoWNlCm
         7Rt66NEwCSc/Ir4uYKqcf+uUtAt6uQ4qGoBVyygOGhYerpPYWjzZhDq7O2Eg/we33Cqg
         6wkTs5rf8Jdy8ClQVViFSaknu2VDtTXl1oVaNnM0biNsWMXPRneev7U/6yoquWg1hmE0
         miILVMxuowQAXuoYtkbkFJGQ/z1UKP7ltuu4V8+1j6sSdguBNxTdWQW2TkrjOqBJOFzj
         ISqCk2cl+FY5WsoakwgIQiNzitGdOgvWiilRcaNkrdsAXHINYT11vwx2ONCUJctNdQLe
         X6bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760000807; x=1760605607;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nNMFRDKf+PR9ZifP7PovpqPBrj6t9cvi/yjDK0cLJZg=;
        b=oZitCDxBuDRDcG8HQOw3JZ0+WXt2OkOhyODtnKQ89G1wlOh95bSFylMNEJ3Gl1cqip
         swi4nBFrxTAch6NUTjdzj6xaDDCHA7HFxofezqq+2vld415W8rL5uJae+Yt2yAh1+xAn
         fpAzDN5l1QW6LMNwCHqY+WzRn54Eo3FWo5gq1YiJqclHIb+7+9HRfd2Pj/mTVgS/S1U7
         6u9QBgeemB5kTpWdnb/112NYjSeJ/8xvsGkgrChjqZaxdnJex78+48NtW/i6LTzXHlX7
         NEt5h0txbdhsgw/HpHexl0aaZBNJpccFWwc7LHSVzukIa07HSo0T1vSkkEwj92AUtq2z
         ZMEQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWxEq8reMKjqmZ8ID8mBW3w5Ia+xdoGR7cH4DY+5K6nWND30gOTuf8vgnawVI2P4ymwjUkifXvP9ip@vger.kernel.org
X-Gm-Message-State: AOJu0YwFszehe9HservASU4qC7E2/swuRnygDaYcxtUtOvV+zsnNzxaV
	wMq4Hm9TjpveBZZ3Hc11ELmHJ0LJPy6mzZGzxpZckibSb/1E1yEk6VaZh4V51OBbn+o=
X-Gm-Gg: ASbGncuiE08bEtuGXHv1avetUA6PH1R3n0GXIw1dSciGJr1kTJfMHeWo7VlLxxyilw9
	wto78OCM3qb+sx1eF/957SWrlA0ty8TbhpATuwNbNCT9gmlj69qfl2UWRPuGfarhjy2XZ3QQWjQ
	9dzI4hQJv0fDN5h8lxbMztHjzceBiE0gdJL1gIJQOLYCJgiDByEdi8BwKIgvBgRq3OOTSkhaj+5
	bphW21QAOnmzcukNjRayTbUCLcFcV9sj+LhfV40Pe6D3skXyY52ve+m7zDVAhjCx2x9TtZqHcMn
	PEwPT1G4mzUZdks5Hal/tgkACAMfpV0VnLgZzwcw76Zj47K+IM5Rvg7CZmIq6nZit580XsoImJo
	1NqtZ2C7nx62QE0vtuJTZEeU7Rw/LtZd2y9hovZejywkBDZHcYf8op4EgDhbHFjHG0bEMWpIKKL
	O4n2rkRJoaZHIaHTcDm/jSoG/T4gep
X-Google-Smtp-Source: AGHT+IGm/Mg20wT52Yz18adAEnK19Y7RIb9c4hj+CZ1l8vH2jZ1AG0rITrk09L/xcZA5AmW7s2lOKQ==
X-Received: by 2002:a05:6402:26d3:b0:639:fc76:a1c5 with SMTP id 4fb4d7f45d1cf-639fc76a9b7mr1504552a12.0.1760000806651;
        Thu, 09 Oct 2025 02:06:46 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-639f4109046sm1905755a12.44.2025.10.09.02.06.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 02:06:46 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Thu, 09 Oct 2025 11:06:32 +0200
Subject: [PATCH v2 2/6] arm64: dts: qcom: qcm6490-shift-otter: Remove
 thermal zone polling delays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251009-otter-further-bringup-v2-2-5bb2f4a02cea@fairphone.com>
References: <20251009-otter-further-bringup-v2-0-5bb2f4a02cea@fairphone.com>
In-Reply-To: <20251009-otter-further-bringup-v2-0-5bb2f4a02cea@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Casey Connolly <casey.connolly@linaro.org>, 
 Alexander Martinz <amartinz@shiftphones.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760000803; l=2070;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=Xc4H+R3mMQrdOpE68XhI6JWcRws9SKVfGYWA9EyPAUY=;
 b=7CsE0YfsD2z9CLqNOuY/vXXLfkngSXvRXnGRSw0zBuQ5jQZ0VOMBU+u6MslQvP2csPjlDDrbT
 xcjwltMQFI5C8Thh8ymLmP2AGKLvF9kHo3q6JTSjrIhHnK3oUbr8TF/
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

From: Alexander Martinz <amartinz@shiftphones.com>

As with all other devices in commit 7747a49db7e5 ("arm64: dts: qcom:
sc7280-*: Remove thermal zone polling delays"), apply the same change to
this device as the delays are assumed to be equal to "0" if not set.

Signed-off-by: Alexander Martinz <amartinz@shiftphones.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
index 8d45e6ac0e44..0d331bda4a82 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
@@ -130,8 +130,6 @@ rmtfs_mem: rmtfs@f8500000 {
 
 	thermal-zones {
 		camera-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&pmk8350_adc_tm 2>;
 
 			trips {
@@ -144,8 +142,6 @@ active-config0 {
 		};
 
 		chg-skin-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&pm7250b_adc_tm 0>;
 
 			trips {
@@ -158,8 +154,6 @@ active-config0 {
 		};
 
 		conn-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&pm7250b_adc_tm 1>;
 
 			trips {
@@ -172,8 +166,6 @@ active-config0 {
 		};
 
 		quiet-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&pmk8350_adc_tm 1>;
 
 			trips {
@@ -186,8 +178,6 @@ active-config0 {
 		};
 
 		rear-cam-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&pmk8350_adc_tm 4>;
 
 			trips {
@@ -200,8 +190,6 @@ active-config0 {
 		};
 
 		sdm-skin-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&pmk8350_adc_tm 3>;
 
 			trips {
@@ -214,8 +202,6 @@ active-config0 {
 		};
 
 		xo-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
 			thermal-sensors = <&pmk8350_adc_tm 0>;
 
 			trips {

-- 
2.51.0


