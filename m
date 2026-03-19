Return-Path: <devicetree+bounces-277759-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +IIDBEbuu2liqQIAu9opvQ
	(envelope-from <devicetree+bounces-277759-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:38:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FA72CB3DF
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:38:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 40672307C494
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:36:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 642D63C8718;
	Thu, 19 Mar 2026 12:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a+mDoK5X";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MjgnOQhx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB7F2E03EA
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773923817; cv=none; b=T4R4DjPn8AGQKIXYsdLsmyQii6z6cJUzwdkJtGhXv7d4gtcWG5axX2nhmjRWJ1F9jESKWXL+/n+bUKFpYSyT5YuNQaD3YxYTZDDYOkYo99dN1ORVFj9lZU7ihr9chQrxrrvuJE+QCJhvidFP+xRulxYouhcJqXOpw0mwvAJup9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773923817; c=relaxed/simple;
	bh=Ca3elkhYK9p2hSJbJu2CmYzWJVZp7uk95TrLKvPgL60=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=bcb9eQzbq/+cOEgshfrGRak9RcQNM6aER6vM6sbdxTs7prv8p+s9f2jE2sadeZjAit1FTTMPZhsIct2J8/PyAO/8MTL8c/I7/+JOnW4UOo0DNIwKpsaMqOAvQIH/Qvz1TOax/sBgXUeniGajm4uS2n2PvQyOU+z7rX5m2GViXW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a+mDoK5X; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MjgnOQhx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J73xKX2544624
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:36:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=MUQB9o/3ODSXROu1lgN5NE
	LvUl/+ZQ0tjQO3wbFTPGk=; b=a+mDoK5XU8aJGSBEvSyYGmxuz3P6CFB1ACWctw
	5THLyInxEqWfsnzax5wJzXjmhmY48AhdhIZt8fZ+fX2H2GiQnJV9vYhvJ4u2zJLo
	Lubdq6Ig11Yrs3Z5lDjjBHQJNIRA9k3P1Bvmf8v4Ahhx15dRbX5SDPBNK9xI1uuL
	3N/rkVKmzf/5GxEnqJAVNsZwcIaAld9UZw01IxB7fIoGjoQg7yAr8ysJC9XtWLaD
	M85ajUxCIphjVjryPqFa3CXB4dsZVgStOKKCbeZMEOdUslSHkDQb6c9qYUtdg/MX
	ihljgN88BZUR9XzHvKvSorxmH1w4A3bjjwuTDmTKDtnNXetw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0957sgxw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:36:54 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50917996cfaso54449381cf.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 05:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773923813; x=1774528613; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MUQB9o/3ODSXROu1lgN5NELvUl/+ZQ0tjQO3wbFTPGk=;
        b=MjgnOQhxiw64haycCPOM8uIVNDGFgTMz7K1bWAyYeKpsHeW953rtVq5DNaHmFnnrUL
         tsy+oexziCGAY2fps3SjHgs72c1B92MSnRHsQShMHo4kYjROE4pYV6cOmh/Wk6SSoKcu
         7j22CyPe6S4ZPhgUkKOd8bA99mVvoP5Y7huj3cfnXMA5suxVdhla7texuwhSRZl6hyZY
         bq+LOl2Ya+W3R5hwCoczkCYuMkmi0aX9yo9kYzSGBcfPve85n59AJ7bMVWjbswbN+/Oc
         KHkFk9dsJYTj2hV+v0n439YE6H7cZRJw2tYbf8ubkLEJb1GjSJQV9i0Y7jr59qprWR9Q
         lWIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773923813; x=1774528613;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MUQB9o/3ODSXROu1lgN5NELvUl/+ZQ0tjQO3wbFTPGk=;
        b=ntbJE+/tmFwcsNwZbyGznyZfHgi3PtfftrTSoikg/sZKueD6mqzP9SSzsrpZHTIsZf
         j/GPoG/vkU+1C2RT4xA3gbqjsu9XvL9+TW+2pu5ZI1o1HXWzOKl0AQko65Z3ljMkk1Jr
         AwgG8BxGHIXgZOYJI2Jhky0QyF5pV3+FTF7Srl3aRCvNm2V7/AFfowwxiBIRpvUFm5mf
         2w5FXdKyzbuFKyjTBL+m9WNS88ngys9VSAX5k+Ixr4M+hTwwijj58JZSc5HGrOWeNZ+z
         fhbqnH59yImCxXp2JyYI6cuEwwY2Z7WDAf+CcvmH4PZKECmkVKZoMZrgYk8wp/I4JeZa
         OhEg==
X-Forwarded-Encrypted: i=1; AJvYcCXSzToYGvDG5tJO8k0xC/kCzginaIzOLCjS8tEZRe0vHrYGeU1IeWaBFYKT8fDGOTJOGGV2X6V4fjyd@vger.kernel.org
X-Gm-Message-State: AOJu0Yxju4Wcuts7sB8jC2DISmqVUvwTYvr1rvRHo3d1ovqZheSSzjsg
	AetcpIwOew+r7GpT+2C2E+hXF7G+v5OsQ8iERVyKUrQiJcFGVzhI5NjHzU9xj/ReTvKXnq7MuXj
	3VOHLIKafvAzSpYPSgdfvYxaYHoQSuUCPvLxtpzrlTfFd5D9u7T3E1uMYKheGaZ7t
X-Gm-Gg: ATEYQzzxyANJzVJ/cWwuix8m9RIjrEv91iSH9n482ny5j7hDCR3zmJxgYmerYGAvB7U
	SLwKYcuTll3o6gf7Ua9tNf5RyWcC983j381o2GdgGOJP3vq36tSUbZ2uXJG3qUGF4R8wsSP7kMz
	qmUUtNxYTj0myhxU9pSrlEKkTbfNNTjRAJ1vJ1V3QAGd9hXtA7vD8MGc8g38Nf5scZIYTbrkeFX
	jU94LcjSYbe0v/s0E828OpPv5iu8L8HbcoiJdmUkp/0M2xMad4EOj8QCPOsHmlbs2dueafbeWws
	t2LL4nDcqnwLjzohUGxYB4F20v/7YLJZ9LeJEpFXurtM+sPtcYh9540ujxMsr473dod8cNgH8dZ
	NYf+AcqbONthxFg4AZDQGN/J5aHw=
X-Received: by 2002:ac8:5fcd:0:b0:509:2032:d231 with SMTP id d75a77b69052e-50b14897187mr86089121cf.53.1773923813187;
        Thu, 19 Mar 2026 05:36:53 -0700 (PDT)
X-Received: by 2002:ac8:5fcd:0:b0:509:2032:d231 with SMTP id d75a77b69052e-50b14897187mr86088541cf.53.1773923812449;
        Thu, 19 Mar 2026 05:36:52 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f463d6basm44962075e9.11.2026.03.19.05.36.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 05:36:51 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v5 0/2] arm64: dts: qcom: glymur: Add USB support
Date: Thu, 19 Mar 2026 14:36:43 +0200
Message-Id: <20260319-dts-qcom-glymur-add-usb-support-v5-0-b1d9c03d5f09@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANvtu2kC/43Ry2rDMBAF0F8xWldBL8tyVvmP0oXkkROVOLb1M
 A3B/17ZLqSLBncjuDA6d2AeKFjvbEDH4oG8nVxw/S2H8q1AzUXfzhY7yBkxwiShpMYQAx6bvsP
 n671LHmsAnILBIQ1D7yOWtDISaiCcNSgrg7et+1ob3j+2HJL5tE1c2J8Jb8eUq+M2howOFueOz
 sVjoaxgwEoqdGXRIlxciL2/rytPdP2wbUf57nYTxQTXCiRwVUFL6KkP4TAmfV3qDvlZKyb2ZBn
 7B8sy2wpLWq7AMAovWP5kOWH7LM+sUtwaJmuqyStW/Gb3TzSJzEoDjaBtqYCqP9h5nr8B7dQde
 BwCAAA=
X-Change-ID: 20260109-dts-qcom-glymur-add-usb-support-617b6d9d032c
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-7ae85
X-Developer-Signature: v=1; a=openpgp-sha256; l=2489;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=Ca3elkhYK9p2hSJbJu2CmYzWJVZp7uk95TrLKvPgL60=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpu+3elyVKZ7Khi8xVncjHhYQgPXIWKev8AnRZS
 9crVgxh0pqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabvt3gAKCRAbX0TJAJUV
 VnvtEAClIhBzRRqlSccRk7/mDidAyj/BaeH873agTSGEVqAouuDlql5M1cuJu1ooD7js5eoeImB
 GfiykTMX74FDq5Smp5hw2xW4uZjVRlv8Xg4EkZCBzB6ehm1MvnWsrZgP1/QoNCZeK8pyiDbQlVJ
 EiX4cf9YJnEJRh/t+S97lTfbZxqx8T8hov0dEqkYNS3xMnZoZLhVEQSnoH5yXIjnrxV1aznwzuc
 L79jnO0fZ6qko9nk9UXfyCRbOGbarrlgaPRdMaoQ17Nque0Ml2kJ50HNR4eLTedq+AIl8+THFoW
 KTB9awiiEq4sZwHsCCx1bgurmGzttm9u33oDnL7R8yRVL4v0F8rC/REtLLqJLx0h1yWpDXXULYN
 MqtyL2iTqTK0wr2xhvEAoKWgvswnesC5/1SZenFJP1+lNrbOmYdWBfSpkf7Y8vpJTXcnUOw6RwQ
 BwRo6vAMM52SFf8Qj4MT/lYMfDpZwiwd09RIFaRLrd6DhGOqVsK2hZHFWAgti09Vc9qGAxZsYM1
 AMuV7W/wCfs2KVx7F+aZWUBPy9ZlnnM6brZUW1EScb2h9KCl5xToiNJMMdvmEUVVlFx3u+5xvbO
 mK+NcuaDNoklxTInS+U54beimm1JIWVnWsq4FfW8Y5NrIo631IBAAq549tXNG0m/A0aI5mnIKqR
 UyVrBMlhdB6+kPw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: cUZXL7XSn2f7bTLAk3tbCnuBUN_kx685
X-Proofpoint-GUID: cUZXL7XSn2f7bTLAk3tbCnuBUN_kx685
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDA5OCBTYWx0ZWRfX5wcp69Dp6ZsJ
 5n4ukrqOQjqZfVeMgwzwMCXjWzNn8f8ZCkfudvIfswGDlb8ueTdu3rEHR6vQlu6XFjheyf0If8l
 sVsJoVIb4VhlNvNFJctG7lPvcBldYGffUS9lOz0s6Q+q5jxTcNn2X4TlLn0o8QJZaMsutI5Mcmb
 JRcm0yypFCCMrDfZbsGLM8p0jVpSynsG8gctbFMW0So5WJYqBPMZLBOFuT5c2hN8sfd6o+Urvy0
 9wI8O5B0/3EvFUk3jz8Ft9S7cJmVv+Gw/AQ6kXP8/m38jIs8WswdS0aZjwaHy/KE5aMwbugHeQh
 kpzaBrmVPwf/Xb6HoqvY1V9Sb0B66I+lvyNbvc7QySGspW3Y2b8pZNoDioQ0N/l/T/yABg4G0wC
 YG8hAiUBpuMDr9UjUXrrBsjxjMzeWk1Q6x9v078XIYeutTxnp/Ub3GUOC7dXmYlMOYSv4h4l24W
 xHWsNZrPzkFaxbAoI1Q==
X-Authority-Analysis: v=2.4 cv=RZedyltv c=1 sm=1 tr=0 ts=69bbede6 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=E5JcmwgiqHGAA_JIGHUA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-19_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0 adultscore=0
 spamscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190098
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277759-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 96FA72CB3DF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add support for USB on Glymur SoC and its Compute Reference Device.

This unblocks the upstreaming of the display support, since 3 DP instances
rely on some clocks provided by the combo PHYs.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v5:
- Rebased on next-20260318.
- Reworded the commit messages to make them cleaner.
- Dropped all the dependencies.
- Link to v4: https://patch.msgid.link/20260309-dts-qcom-glymur-add-usb-support-v4-0-6bdc41f58d18@oss.qualcomm.com

Changes in v4:
- Dropped the RFT as I've been able to test this myself now
  and Pankaj tested it as well.
- Added missing second compatible string to pmic-glink node.
- Dropped the 3rd Type-C port support entirely from CRD dts
  as the SKU that I have only has 2. Re-worded commit message
  accordingly.
- Forced dr_mode to host on both Type-C ports.
- Picked Konrad's R-b tags for dts/dtsi patches.
- Picked Pankaj's T-b tags for dts/dtsi patches.
- Renamed the second PTN3222 from "_2" prefixed to "_1", as Konrad
  suggested.
- Link to v3: https://patch.msgid.link/20260302-dts-qcom-glymur-add-usb-support-v3-0-883eb2691a0d@oss.qualcomm.com

Changes in v3:
- Dropped the PTN3222 USB Redriver @0x4f, which isn't there actually.
- Dropped extra newlines from pmic node, reported by Konrad.
- Link to v2: https://patch.msgid.link/20260223-dts-qcom-glymur-add-usb-support-v2-0-f4e0f38db21d@oss.qualcomm.com

Changes in v2:
- Picked Rob's R-b tag for bindings patch.
- Fixed CRD DT commit message according to Jack's suggestions
- Sorted nodes in board DTS.
- Added proper quirks to all controllers.
- Added RPMH_CXO_CLK as ref clocks to the USB [01] HS PHYs
- Replaced 0 with 0x0 in all reg ranges, as Dmitry suggested.
- Renamed all usb_ss[0-2] to simply usb_[0-2], and the usb_2 to usb_hs
  like Konrad suggested.
- Link to v1: https://patch.msgid.link/20260113-dts-qcom-glymur-add-usb-support-v1-0-98d6d387df01@oss.qualcomm.com

---
Wesley Cheng (2):
      arm64: dts: qcom: glymur: Add USB related nodes
      arm64: dts: qcom: glymur-crd: Enable USB support

 arch/arm64/boot/dts/qcom/glymur-crd.dts | 214 ++++++++++
 arch/arm64/boot/dts/qcom/glymur.dtsi    | 691 +++++++++++++++++++++++++++++++-
 2 files changed, 900 insertions(+), 5 deletions(-)
---
base-commit: 8e42d2514a7e8eb8d740d0ba82339dd6c0b6463f
change-id: 20260109-dts-qcom-glymur-add-usb-support-617b6d9d032c

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


